#!/usr/bin/env python

import os

env = Environment(TEXINPUTS=os.curdir,
                  tools=["default", "dtxtools"] )

root = "secretx"
pdf = env.PDF(root + ".dtx",
              MAKEINDEX=env["MAKEINDEX"] + " -s gind.ist")
stys = env.ins2sty([], root + ".ins")
Depends(pdf, stys)
if not GetOption("clean"):
    Default(pdf)

examples = [p for t in ("example-slides.tex",)
              for p in env.PDF(t)]

