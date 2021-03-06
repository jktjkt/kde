# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

KDE_DOXYGEN="true"
KDE_TEST="true"
inherit kde5

DESCRIPTION="Libary for handling mail messages and newsgroup articles"
LICENSE="LGPL-2+"
KEYWORDS=""
IUSE=""

DEPEND="
	$(add_frameworks_dep kcodecs)
	$(add_frameworks_dep ki18n)
"
RDEPEND="${DEPEND}"
