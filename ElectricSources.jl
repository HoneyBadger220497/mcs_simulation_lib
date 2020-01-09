
Modia.@model ConstantVoltageSource begin
    @extends OnePort()
    @inherits u
    U = Voltage(value = 5.0, variability = Modia.parameter)
    @equations begin
        u = U
    end
end


"""
This actualy works:

function VoltageSignalSource(signal::Function)
    Modia.@model ConstantVoltageSource begin
        @extends OnePort()
        @inherits i, u
        @equations begin
            u = signal(time)
        end
    end
end

Modia.@model SinVoltageSource begin
    @extends VoltageSignalSource(x->sin(x))()
end
"""