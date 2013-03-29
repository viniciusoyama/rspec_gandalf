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