rm -rf three20 from the checkout, copy to "~/Library/Application Support/Developer/Shared" to make these templates available

When using the project template:
in the new project directory, run:
`git init`
`git submodule init`
`git submodule add git://github.com/joehewitt/three20.git Frameworks/three20`

remove and re-add the Three20 dependency on the Application Target (in Xcode)


