
Modia.@model Resistor begin
    @extends OnePort()
    @inherits i, u
    R = Resistance(value = 1, variability = Modia.parameter)
    @equations begin
        u = R*i
    end
end

Modia.@model Capacitor begin
    @extends OnePort()
    @inherits i, u
    C = Capacity(value = 1, variability = Modia.parameter)
    @equations begin
        i = C*der(u)
    end
end

Modia.@model Inductivity begin
    @extends OnePort()
    @inherits i, u
    L = Inductivity(value = 1, variability = Modia.parameter)
    @equations begin
        u = L*der(i)
    end
end