#############################
# Interface for distributions
#############################

"""
    rand{T}(rng::AbstractRNG, d::Any)

Return a random element from distribution or space `d`. The sample can be a state, action or observation.
"""
Base.rand

"""
    pdf(d::Any, x::Any)

Value of probability distribution `d` function at sample `x`.
"""
function pdf end # maybe eventually this should be Distributions.pdf

"""
    iterator(d::Any)

Return an iterable type (array or custom iterator) that iterates over possible values of `d`. Values with zero probability may be skipped.
"""
function iterator end

iterator(a::AbstractArray) = a
