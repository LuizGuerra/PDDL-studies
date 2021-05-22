(define (domain transporte)

    (:requirements :strips )

    (:predicates
        (Aviao ?plane)
        (Aeroporto ?loc)
        (Local ?obj ?loc)
        (Carga ?obj)
    )
    
    (:action carregar
        :parameters (?obj ?loc ?plane)
        :precondition (and (Carga ?obj) (Local ?obj ?loc) (Aeroporto ?loc) (Aviao ?plane) (Local ?plane ?loc))
        :effect (and (Local ?obj ?plane) (not (Local ?obj ?loc)))
    )

    (:action voar
        :parameters (?obj ?from ?to)
        :precondition (and (Aviao ?obj) (Local ?obj ?from) (Aeroporto ?from) (Aeroporto ?to))
        :effect (and (Local ?obj ?to) (not (Local ?obj ?from)))
    )
    
    (:action descarregar
        :parameters (?obj ?loc ?plane)
        :precondition (and (Carga ?obj) (Local ?obj ?plane) (Aeroporto ?loc) (Aviao ?plane) (Local ?plane ?loc))
        :effect (and (Local ?obj ?loc) (not (Local ?obj ?plane)))
    )
)