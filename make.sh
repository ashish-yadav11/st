#!/bin/sh
pkgname=st
tar -zcvf "$pkgname.tar.gz" "$pkgname"
makepkg -cfsi
