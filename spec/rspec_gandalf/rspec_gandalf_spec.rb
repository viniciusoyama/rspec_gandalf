# coding: utf-8

require 'spec_helper'

class Balrog;end;

class Men;end;

class Hobbit;end;

class TrollRog < Balrog;end;

class PretaGil < Balrog;end;

describe Hobbit do
  it { shall pass }
end

describe PretaGil do
  it { shall pass }
end
