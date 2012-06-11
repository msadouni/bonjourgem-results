# Find out if a gem is already covered on BonjourGem.com

## Installation

    git clone git://github.com/msadouni/bonjourgem-results.git
    cd bonjourgem-results
    bundle install

## Usage

    $ ./bonjourgem-results <file|name>

    # file is a list of \n separated gem names
    # name is a gem name

With a gem name :

    $ ./bonjourgem-results active_admin
    true

With a gem list :

    # in gems.txt
    active_admin
    rails_admin

    $ bonjourgem-results /path/to/gems.txt
    active_admin : true
    rails_admin : false

