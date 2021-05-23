(define (domain foo)

    (:requirements :strips )

    (:predicates
        (Pos ?loc)
        (Room ?loc)
        (Connected ?loc ?loc)
        (Dirt ?loc)
    )
    
    (:action move
        :parameters (?from ?to)
        :precondition (and
            (Room ?from) (Room ?to) (Pos ?from)
            (Connected ?from ?to)
        )
        :effect (and
            (Pos ?to)
            (not (Pos ?from))
        )
    )
    
    (:action clean
        :parameters (?loc)
        :precondition (and 
            (Pos ?loc) (Room ?loc) (Dirt ?loc)
        )
        :effect (not (Dirt ?loc))
    )
    
)