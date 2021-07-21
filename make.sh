#!/bin/sh
pkgname=st
pkgver=0.8.4
tar -zcvf "${pkgname}-${pkgver}.tar.gz" "${pkgname}-${pkgver}"
makepkg -cfsi
