# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

KDE_SCM=git
inherit kde4-base

EGIT_REPO_URI="git://anongit.kde.org/kdevelop-pg-qt.git"
EGIT_COMMIT="v${PV}"

DESCRIPTION="A LL(1) parser generator used mainly by KDevelop language plugins"
HOMEPAGE="http://www.kdevelop.org"
SRC_URI="mirror://kde/stable/${PN}/${PV}/src/${PN}-v${PV}.tar.bz2"

LICENSE="LGPL-2"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE="debug"

RDEPEND=""
DEPEND="
	sys-devel/bison
	sys-devel/flex
"
S=${WORKDIR}/${PN}-v${PV}
#PATCHES=( "${FILESDIR}/${P}-underlinking.patch" )
