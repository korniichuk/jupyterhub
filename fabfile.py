#! /usr/bin/env python2
# -*- coding: utf-8 -*-

"""The jupyterhub stack fabric file"""

from fabric.api import local

def git():
    """Setup Git"""

    local("git remote rm origin")
    local("git remote add origin https://korniichuk@github.com/korniichuk/jupyterhub.git")
    local("git remote add bitbucket https://korniichuk@bitbucket.org/korniichuk/jupyterhub.git")
