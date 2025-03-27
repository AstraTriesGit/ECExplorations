module ECExplorations

greet() = print("Welcome to ECExplorations!\n")

module Signals

    export square, Triangle;

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

    module Triangle
        export asin_t;
        """
        Returns the triangle wave values for a given time range using the asin method.

        # Arguments
        - `t::Real`: Time value or array of time values
        - `period::Float64`: Length of one complete cycle
        """
        function asin_t(t; period=2)
            return (2/π) * asin(sin(2π * t / period)) 
        end
    end
end

end # module ECExplorations
