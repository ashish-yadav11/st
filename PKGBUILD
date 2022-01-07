# Maintainer: Ashish Kumar Yadav <ashishkumar.yadav@students.iiserpune.ac.in>

pkgname=st-cust
_pkgname=st
pkgver=0.8.5
pkgrel=1
pkgdesc="Simple terminal implementation for X"
arch=(i686 x86_64)
url="https://st.suckless.org/"
license=(MIT)
depends=(libxft)
optdepends=('neovim: required by st-pager'
            'perl: required by st-plumber'
            'perl-regexp-common: required by st-plumber'
            'xdg-uitls: xdg-open required by st-pluber'
            'libnotify: required by st-plumber')
provides=(st)
conflicts=(st)
options=('!strip')
source=("$_pkgname.tar.gz"
        "$_pkgname.desktop")
sha256sums=(SKIP
            SKIP)

build() {
    cd "$srcdir/$_pkgname"
    make
}

package() {
    cd "$srcdir/$_pkgname"
    make PREFIX=/usr DESTDIR="$pkgdir" install
    install -m755 -D st-pager "$pkgdir/usr/bin/st-pager"
    install -m755 -D st-plumber "$pkgdir/usr/bin/st-plumber"
    install -m644 -D LICENSE "$pkgdir/usr/share/doc/$_pkgname/LICENSE"
    install -m644 -D README "$pkgdir/usr/share/doc/$_pkgname/README"
    install -m644 -D "$srcdir/$_pkgname.desktop" "$pkgdir/usr/share/applications/$_pkgname.desktop"
}
