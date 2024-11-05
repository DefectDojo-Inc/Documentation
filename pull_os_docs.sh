#!/bin/bash

# Clone the OS dojo repo
# This step will go away when ever we integrate this into the GHA
git clone -b dev https://github.com/DefectDojo/django-DefectDojo os_dojo
cp -r os_dojo/docs os_dojo_docs
rm -rf os_dojo

# Copy over the right files
# cp source-file location-file (For single files)
# cp -r source-folders location-folders (For entire folders)

# This may faile, but it is an example
cp -r os_dojo_docs/content/en/integrations/parsers content/docs/integrations/parsers