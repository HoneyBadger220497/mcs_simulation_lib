""" 
Connector class pin
used to connect electrical component models via connect
"""
Modia.@model Pin begin
    # Current is flow-variable
    i = Current(flow = true, info = "Electrical current through pin in Ampere")
    # Potenzial is non-flow-variable
    v = Voltage(info = "Electrical potential of pin in Volts")
end


"""
Partial model class for component with to pins 
"""
Modia.@model OnePort begin
    p = Pin(info = "Positiv pin")
    n = Pin(info = "Negativ pin")
    u = Voltage(info = "Potenzial difference between components ports") 
    i = Current(info = "Current through component")
    @equations begin
        u = p.v-n.v # Potential difference
        p.i = n.i   # Kirchhoff's Law component internaly
        i = n.i     # Current through component is equal to input current
    end
end

Modia.@model Ground begin
    p = Pin(info = "PositivPin")
    @equations begin
        p.v = 0
    end
end