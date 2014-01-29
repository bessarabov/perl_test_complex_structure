use Test::More;

my $got = [
    {
        id => 82,
        letter => 'a',
        color => 'green',
    },
];

my $expected = [
    {
        id => 82,
        letter => 'b',
    },
    {
        id => 83,
    },
];

is_deeply(
    $got,
    $expected,
    'is_deeply',
);

done_testing();
__END__

not ok 1 - is_deeply
#   Failed test 'is_deeply'
#   at t/01__test-more__is_deeply.t line 21.
#     Structures begin differing at:
#          $got->[0]{color} = 'green'
#     $expected->[0]{color} = Does not exist
1..1
# Looks like you failed 1 test of 1.
