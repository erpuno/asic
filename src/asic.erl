-module(asic).
-compile(export_all).
-include_lib("asic/include/asic.hrl").
-behaviour(application).
-behaviour(supervisor).
-export([start/2, stop/1, init/1]).

start(_StartType, _StartArgs) -> supervisor:start_link({local, ?MODULE}, ?MODULE, []).
stop(_State) -> ok.
init([]) -> {ok, { {one_for_one, 5, 10}, []} }.

