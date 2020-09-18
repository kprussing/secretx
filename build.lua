-- Build configuration for secretx

module = "secretx"

-- The unpack directory has to be on the search path so building the
-- documentation can find sectetx.sty
texmfdir = "build/unpacked"

-- Typeset and install the examples and sources to the doc folder
docdir = "doc/latex/" .. module .. "/"
demofiles = {"example-doc.tex",
             "example-slides.tex"}
typesetdemofiles = demofiles
installfiles = {}
tdslocations = {}
for _, example in pairs(demofiles) do
    table.insert(installfiles, example)
    table.insert(tdslocations, docdir .. example)
end

-- Set the configuration details
uploadconfig = {
    -- Identification
    author = "Keith F Prussing",
    uploader = "Keith F Prussing",
    email = "kprussing74@gmail.com",

    -- URLs
    home = "https://github.com/kprussing/secretx",
    repository = "https://github.com/kprussing/secretx",
    bugtracker = "https://github.com/kprussing/secretx/issues",
    support = "https://github.com/kprussing/secretx/issues",

    -- Package information
    pkg = module,
    version = "0.9",
    summary = "LaTeX macros for importance markings",
    ctanPath = "/macros/latex/contrib/" .. module,
    license = "LPPL",
}
