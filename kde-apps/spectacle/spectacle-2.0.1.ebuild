# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

KDE_HANDBOOK="true"
KMNAME="kscreengenie"
inherit kde5

DESCRIPTION="Screenshot capture utility"
SRC_URI="mirror://kde/stable/${KMNAME}/${PV%.*}/src/${KMNAME}-${PV}.tar.xz"

KEYWORDS="~amd64"
IUSE="kipi"

DEPEND="
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep kio)
	$(add_frameworks_dep knotifications)
	$(add_frameworks_dep kservice)
	$(add_frameworks_dep kwidgetsaddons)
	$(add_frameworks_dep kwindowsystem)
	$(add_frameworks_dep kxmlgui)
	$(add_plasma_dep kscreen)
	dev-qt/qtdbus:5
	dev-qt/qtgui:5
	dev-qt/qtprintsupport:5
	dev-qt/qtwidgets:5
	dev-qt/qtx11extras:5
	x11-libs/libxcb
	kipi? ( $(add_kdeapps_dep libkipi '' '5.9999') )
"
RDEPEND="${DEPEND}
	!kde-apps/ksnapshot
"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_find_package kipi KF5Kipi)
	)
	kde5_src_configure
}
