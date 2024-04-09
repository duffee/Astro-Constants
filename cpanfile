requires 'perl' => '5.006';

on 'test' => sub {
  requires 'Test::More';
  requires 'Test::Number::Delta';
};

on 'develop' => sub {
  requires 'perl' => '5.020';
  requires 'XML::LibXML';

  recommends 'Module::Util';
  recommends 'Pod::Elemental::Transformer::List';
};

on 'configure' => sub {
  requires 'ExtUtils::MakeMaker';
};
