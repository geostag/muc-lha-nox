#!/bin/bash 

export basedir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
export bindir="${basedir}/scripts"
export datadir="${basedir}/data"
export penvdir="${basedir}/penv"
export htmldir="${basedir}/html"
chmod 750 ${bindir}
export PATH=${PATH}:${bindir}

test -d $datadir || mkdir $datadir

# setup virtual python
if [ ! -d $penvdir ]; then
  python3 -m venv $penvdir
  pip install -r "${basedir}/requirements.txt"
fi
. "${penvdir}/bin/activate"
