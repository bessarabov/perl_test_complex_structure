use Test::More;
use Test::Deep;

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

cmp_deeply(
    $got,
    $expected,
    'cmp_deeply',
);

done_testing();
__END__

not ok 1 - cmp_deeply
#   Failed test 'cmp_deeply'
#   at t/02__test-deep__cmp_deeply.t line 22.
# Compared array length of $data
#    got : array with 1 element(s)
# expect : array with 2 element(s)
1..1
# Looks like you failed 1 test of 1.
