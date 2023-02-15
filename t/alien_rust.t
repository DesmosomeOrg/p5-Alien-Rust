use Test2::V0;
use Test::Alien;
use Test::Alien::Diag;
use Alien::Rust;

use Path::Tiny qw( path );

alien_diag 'Alien::Rust';
alien_ok 'Alien::Rust';

use Env qw(RUSTUP_HOME);

if( Alien::Rust->install_type eq 'share' ) {
  $RUSTUP_HOME = path(Alien::Rust->dist_dir)->child('.rustup');
}

 run_ok([ qw(rustc --version) ])
   ->success
   ->out_like(qr/^rustc ([0-9\.]+)/);

 run_ok([ qw(cargo --version) ])
   ->success
   ->out_like(qr/^cargo [0-9\.]+/);

done_testing;
