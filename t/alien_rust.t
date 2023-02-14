use Test2::V0;
use Test::Alien;
use Test::Alien::Diag;
use Alien::Rust;

alien_diag 'Alien::Rust';
alien_ok 'Alien::Rust';

# run_ok([ ... ])
#   ->success
#   ->out_like(qr/ ... /);

done_testing;
