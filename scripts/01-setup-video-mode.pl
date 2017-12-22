#!/usr/bin/perl -w

use strict;


sub get_preferred_mode {
    my $group = shift;
    my $preferred_mode;
    open DATA, "tvservice -m $group |";
    while (<DATA>) {
	/preferred.*mode\s*(\d+)/ and do {
	    $preferred_mode=$1;
	};
    }
    close DATA;
    return $preferred_mode;
}

sub get_prefferred_group_mode {
    my ( $cea_preferred_mode, $dmt_preferred_mode ) = @_;
    if ($cea_preferred_mode) {
	return ( 1, $cea_preferred_mode );
    } elsif ($dmt_preferred_mode) {
	return ( 2, $dmt_preferred_mode );
    } else {
	return ( undef, undef );
    }
}


my $dmt_preferred_mode = &get_preferred_mode("DMT");
my $cea_preferred_mode = &get_preferred_mode("CEA");
my ($mode, $group) = &get_preffered_group_mode( $cea_preferred_mode, $dmt_preferred_mode);
{

    local @ARGV = ( "/boot/config.txt" );
    while (<>) {
	s/^hdmi_group/#hdmi_group/;
	s/^hdmi_mode/#hdmi_mode/;
    }
}
