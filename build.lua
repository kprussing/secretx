-- Build configuration for secretx

module = "secretx"

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

