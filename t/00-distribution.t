#########
# Author:        rmp
# Last Modified: $Date$ $Author$
# Id:            $Id$
# Source:        $Source: /cvsroot/Bio-DasLite/Bio-DasLite/t/00-distribution.t,v $
# $HeadURL$
#
package distribution;
use strict;
use warnings;
use Test::More;
use English qw(-no_match_vars);

eval {
  require Test::Distribution;
};

if($EVAL_ERROR) {
  plan skip_all => 'Test::Distribution not installed';
} else {
  Test::Distribution->import('not' => 'prereq'); # Having issues with Test::Dist seeing my PREREQ_PM :(
}

1;
