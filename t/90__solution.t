use Test::More;
use Test::Differences;
use JSON;

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
    to_json( $got, {pretty => 1 } ),
    to_json( $expected, {pretty => 1 } ),
    'eq_or_diff with json',
);

done_testing();
__END__

not ok 1 - eq_or_diff with json
#   Failed test 'eq_or_diff with json'
#   at t/90__solution.t line 23.
# +---+--------------------------+---+-----------------------+
# | Ln|Got                       | Ln|Expected               |
# +---+--------------------------+---+-----------------------+
# |  1|'[                        |  1|'[                     |
# |  2|   {                      |  2|   {                   |
# *  3|      "color" : "green",  *  3|      "letter" : "b",  *
# *  4|      "letter" : "a",     *   |                       |
# |  5|      "id" : 82           |  4|      "id" : 82        |
# |   |                          *  5|   },                  *
# |   |                          *  6|   {                   *
# |   |                          *  7|      "id" : 83        *
# |  6|   }                      |  8|   }                   |
# |  7|]                         |  9|]                      |
# |  8|'                         | 10|'                      |
# +---+--------------------------+---+-----------------------+
1..1
# Looks like you failed 1 test of 1.
