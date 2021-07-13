pkgname=task-spooler
pkgver=1.1.0
pkgrel=0
pkgdesc="task-spooler"
arch=('x86_64')
license=('GPL')

build() {
  make -C ..
}

package() {
  make -C .. PREFIX="$pkgdir/usr" install

  mv "$pkgdir"/usr/bin/{ts,tsp}
  mv "$pkgdir"/usr/share/man/man1/{ts,tsp}.1
}

