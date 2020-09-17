#!/usr/bin/env python

import os
import re

env = Environment(TEXINPUTS=os.curdir,
                  tools=["default", "dtxtools"] )

root = "secretx"
pdf = env.PDF(root + ".dtx",
              MAKEINDEXFLAGS="-s gind.ist",
              MAKEGLOSSARYSTYLE="gglo.ist")
stys = env.ins2sty([], root + ".ins")
Depends(pdf, stys)
if not GetOption("clean"):
    Default(pdf)

examples = [p for t in stys
              if re.match("example.*tex", os.path.basename(str(t)))
              for p in env.PDF(t)]

