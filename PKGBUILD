# Maintainer: Ashish Kumar Yadav <ashishkumar.yadav@students.iiserpune.ac.in>

pkgname=st-cust
_pkgname=st
pkgver=0.8.4
pkgrel=1
pkgdesc="Simple terminal implementation for X"
arch=(i686 x86_64)
url="https://st.suckless.org/"
license=(MIT)
depends=(libxft)
provides=(st)
conflicts=(st)
source=("$_pkgname-$pkgver.tar.gz"
        "$_pkgname.desktop")
sha256sums=(SKIP
            SKIP)

build() {
    cd "$srcdir/$_pkgname-$pkgver"
    make
}

package() {
    cd "$srcdir/$_pkgname-$pkgver"
    make PREFIX=/usr DESTDIR="$pkgdir" install
    install -m644 -D LICENSE "$pkgdir/usr/share/doc/$_pkgname/LICENSE"
    install -m644 -D README "$pkgdir/usr/share/doc/$_pkgname/README"
    install -m644 -D "$srcdir/$_pkgname.desktop" "$pkgdir/usr/share/applications/$_pkgname.desktop"
}
