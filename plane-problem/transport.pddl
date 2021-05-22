(define (domain transporte)

    (:requirements :strips )

    (:predicates
        (Aviao ?plane)
        (Aeroporto ?loc)
        (Local ?obj ?loc)
        (Carga ?obj)
    )
    
    (:action carregar
        :parameters (?obj ?plane ?loc)
        :precondition (and (Carga ?obj) (Local ?obj ?loc) (Aviao ?plane) (Aeroporto ?loc) (Local ?plane ?loc))
        :effect (and (Local ?obj ?plane) (not (Local ?obj ?loc)))
    )
    
    (:action voar
        :parameters (?plane ?from ?to)
        :precondition (and (Aviao ?plane) (Aeroporto ?from) (Aeroporto ?to) (Local ?plane ?from))
        :effect (and (Local ?plane ?to) (not (Local ?plane ?from)))
    )
    
    (:action descarregar
        :parameters (?obj ?plane ?loc)
        :precondition (and (Carga ?obj) (Local ?obj ?plane) (Aviao ?plane) (Aeroporto ?loc) (Local ?plane ?loc))
        :effect (and (Local ?obj ?loc) (not (Local ?obj ?plane)))
    )
)