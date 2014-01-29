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

is(
    $got,
    $expected,
    'is',
);

done_testing();
__END__

not ok 1 - is
#   Failed test 'is'
#   at t/01__test-more__is.t line 21.
#          got: 'ARRAY(0x16ebcb0)'
#     expected: 'ARRAY(0x1718540)'
1..1
# Looks like you failed 1 test of 1.
