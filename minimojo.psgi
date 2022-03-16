use strict;
use warnings;

use MiniMojo;

my $app = MiniMojo->apply_default_middlewares(MiniMojo->psgi_app);
$app;

