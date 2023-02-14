use Test2::V0;
use Test::Alien;
use Test::Alien::Diag;
use Alien::Rust;

alien_diag 'Alien::Rust';
alien_ok 'Alien::Rust';

 run_ok([ qw(rustc --version) ])
   ->success
   ->out_like(qr/^rustc ([0-9\.]+)/);

done_testing;
