import sys
import os
from setuptools import setup, find_packages


VERSION_PY = os.path.join(os.path.dirname(__file__), "blockade/version.py")

# this execs blockade/version.py on it's own and brings __version__ into this
# package. Ugliness is to support both Python 2 and 3.
__version__ = None
with open(VERSION_PY) as f:
    code = compile(f.read(), VERSION_PY, "exec")
    exec(code)
assert __version__, "Failed to get version from %s" % (VERSION_PY)

PYTHON30 = sys.version_info < (3, 0)

dependendencies=(

)
