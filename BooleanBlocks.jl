
module BooleanBlocks

import Modia
export BooleanSignal, BooleanStepSignal, BooleanPin

Modia.@model BooleanPin begin
    y = Modia.Boolean(start = false)
end

Modia.@model BooleanOnSignal begin
    output = BooleanPin()
    on = true
    @equations begin
        output.y = on
    end
end

Modia.@model BooleanStepSignal begin
    output = BooleanPin()
    start_value = false
    start_time = 1
    @equations begin
    output.y = if time < start_time start_value else !start_value end
    end
end

end 
