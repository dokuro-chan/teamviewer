# teamviewer package for arch linux - https://github.com/dokuro-chan

pkgname=teamviewer
pkgver=11.0.53191
pkgrel=2.3
pkgdesc='Botnet as fuck remote desktop and meeting application'
arch=('i686' 'x86_64')
license=('custom')
options=('!strip')
provides=('teamviewer')
conflicts=('teamviewer-beta')
depends_x86_64=(
	'lib32-fontconfig'
	'lib32-libpng12'
	'lib32-libsm'
	'lib32-libxinerama'
	'lib32-libxrender')
depends_i686=(
	'fontconfig'
	'libpng12'
	'libsm'
	'libxinerama'
	'libxrender')
install=teamviewer.install
source_x86_64=("https://download.teamviewer.com/download/version_${pkgver%%.*}x/teamviewer_${pkgver}_amd64.deb")
source_i686=("https://download.teamviewer.com/download/version_${pkgver%%.*}x/teamviewer_${pkgver}_i386.deb")
sha256sums_x86_64=('D624C93679A25B00013A13B74B51746EEEDE674A2C68746C574A086D79A08A48')
sha256sums_i686=('E37F4FA053648366A73AC7AF684CEE8567F3D5EF580AC5F63CBC7A68DA6124FB')

prepare() {
   tar -xf data.tar.bz2
}

package() {
	cp -dr --no-preserve=ownership {etc,opt,usr,var} "${pkgdir}"/
	rm "${pkgdir}"/opt/teamviewer/tv_bin/xdg-utils/xdg-email
	install -D -m0644 "${pkgdir}"/opt/teamviewer/tv_bin/script/teamviewerd.service \
		"${pkgdir}"/usr/lib/systemd/system/teamviewerd.service
	install -d -m0755 "${pkgdir}"/usr/{share/applications,share/licenses/teamviewer}
	ln -s /opt/teamviewer/tv_bin/desktop/teamviewer-teamviewer${pkgver%%.*}.desktop \
		"${pkgdir}"/usr/share/applications/teamviewer.desktop
}

