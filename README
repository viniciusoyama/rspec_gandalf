# rspec_gandalf

Because some objects shall not pass.

## Installation

Add this line to your application's Gemfile:

    gem 'rspec_gandalf'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rspec_gandalf

## Usage


1. Create a file named "gandalf_test.rb"
2. Put this:

```ruby

# coding: utf-8
require 'rspec_gandalf'

class Balrog;end;

class Men;end;

class Hobbit;end;

class TrollRog < Balrog;end;

class PretaGil < Balrog;end;

describe Men do
  it { shall pass }
end

describe Balrog do
  it { shall pass }
end

describe TrollRog do
  it { shall pass }
end

describe PretaGil do
  it { shall_not pass }
end

```

3. Test it

    $ rspec gandalf_test.rb
    
4. See the result

    1) Balrog
     Failure/Error: it { shall pass }
       ATTENTION: Balrog is a flame of Udun and SHALL NOT PASS.
       
    2) TrollRog
     Failure/Error: it { shall pass }
       RUN YOU FOOL. Your disguise doesn't trick me.
       ATTENTION: TrollRog is a flame of Udun and SHALL NOT PASS
    4 examples, 2 failures
    Failed examples:

    rspec ./test.rb:19 # Balrog
    rspec ./test.rb:23 # TrollRog
    
