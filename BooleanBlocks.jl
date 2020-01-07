
module BooleanBlocks

import Modia
export BooleanSignal, BooleanStepSignal

Modia.@model BooleanSignal begin
    y = Modia.Boolean(true)
end

Modia.@model BooleanStepSignal begin
    @extends BooleanSignal()
    @inherits y
    start_value = Modia.Parameter(value = false)
    start_time = Modia.Parameter(value = 1)
    @equations begin
    y = if time < start_time start_value else !start_value end
    end
end

end 