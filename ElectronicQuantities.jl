module ElectronicQuantities


import Modia
import Unitful

export Voltage, Current, Resistance, Conductance, Inductivity, Capacity

"""Electric potential, volts"""
Voltage(; args...) = Modia.Variable(; T=Unitful.V, size=(), start = 0.0, info = "Voltage", args... )

"""Electric current, in A"""
Current(; args...) = Modia.Variable(; T=Unitful.A, size=(), start = 0.0, info = "Current", args... )

"""Electrical Resistance, in Ω"""
Resistance(; args...) = Modia.Variable(;T=Unitful.Ω, size=(), info = "Electrical resistance", args...) 

"""Electrical Conductance, in S"""
Conductance(; args...) = Modia.Variable(;T=Unitful.S, size=(), info = "Electrical conductance", args...) 

"""Inuctivity, in H"""
Inductivity(; args...) = Modia.Variable(;T=Unitful.H, size=(), info = "Inuctivity",  args...) 

"""Capacity, in F"""
Capacity(; args...) = Modia.Variable(;T=Unitful.F, size=(), info = "Capacity", args...) 

end