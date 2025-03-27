module Signals

    export square;

    """
    Returns the square wave values for a given time range.

    # Arguments
    - `t::Real`: Time value or array of time values
    - `period::Float64`: Length of one complete cycle
    - `duty::Float64`: value of duty cycle
    """
    function square(t, period, duty)
        return (mod(t/period, 1) < duty) * 2 - 1
    end
end