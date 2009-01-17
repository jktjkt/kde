# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

KMNAME="kdeutils"
inherit kde4-meta

DESCRIPTION="KDE Wallet Management Tool"
KEYWORDS=""
IUSE="debug htmlhandbook"

RDEPEND="
	>=kde-base/kcmshell-${PV}:${SLOT}
	kde-base/kwalletd:${SLOT}
"
