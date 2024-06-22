# Maintainer: Ashish Kumar Yadav <ashishkumar.yadav@students.iiserpune.ac.in>

pkgname=st-cust
_pkgname=st
pkgver=0.9.2
pkgrel=1
pkgdesc="Simple terminal implementation for X"
arch=(i686 x86_64)
url="https://st.suckless.org/"
license=(MIT)
depends=(libxft)
optdepends=('neovim: required by st-pager'
            'perl: required by st-plumber'
            'perl-regexp-common: required by st-plumber'
            'xdg-utils: xdg-open required by st-pluber'
            'libnotify: required by st-plumber')
provides=(st)
conflicts=(st)
options=('!strip')
source=("$_pkgname.tar.gz"
        "$_pkgname.desktop")
sha256sums=(SKIP
            SKIP)
_sourcedir="$_pkgname"

build() {
    make -C "$_sourcedir"
    make -C "$_sourcedir" installinfo
}

package() {
    make -C "$_sourcedir" PREFIX=/usr DESTDIR="$pkgdir" installwoinfo
    install -m755 -D -t "$pkgdir/usr/bin" "$_sourcedir/st-pager" "$_sourcedir/st-plumber"
    install -m644 -D -t "$pkgdir/usr/share/licenses/$_pkgname" "$_sourcedir/LICENSE"
    install -m644 -D -t "$pkgdir/usr/share/doc/$_pkgname" "$_sourcedir/README"
    install -m644 -D -t "$pkgdir/usr/share/applications" "$_pkgname.desktop"
}
