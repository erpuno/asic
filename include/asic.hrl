-ifndef(ASIC_ID).
-define(ASIC_ID, true).

-record(asic, {id = [] :: list() | binary()
              }).

-endif.
