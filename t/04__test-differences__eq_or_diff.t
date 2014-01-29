use Test::More;
use Test::Differences;

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

eq_or_diff(
    $got,
    $expected,
    'eq_or_diff',
);

done_testing();
__END__

not ok 1 - eq_or_diff
#   Failed test 'eq_or_diff'
#   at t/04__test-differences__eq_or_diff.t line 22.
# +----+-----------------------+----+---------------+
# | Elt|Got                    | Elt|Expected       |
# +----+-----------------------+----+---------------+
# *   0|'color','id','letter'  *   0|'id','letter'  *
# *   1|'green',82,'a'         *   1|82,'b'         *
# |    |                       *   2|83,undef       *
# +----+-----------------------+----+---------------+
1..1
# Looks like you failed 1 test of 1.
