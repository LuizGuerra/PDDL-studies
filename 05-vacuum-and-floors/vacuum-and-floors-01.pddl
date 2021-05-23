(define (domain foo1)

    (:requirements :strips )

    (:predicates
        (Pos ?loc)
        (Room ?loc)
        (Hall ?loc)
        (Connected ?loc ?loc)
        (Dirt ?loc)
    )
    
    (:action clean
        :parameters (?loc)
        :precondition (and 
            (Pos ?loc) (Room ?loc) (Dirt ?loc)
        )
        :effect (not (Dirt ?loc))
    )
    
    (:action enter
        :parameters (?from ?to)
        :precondition (and
            (Hall ?from) (Room ?to) (Pos ?from)
            (Connected ?from ?to)
        )
        :effect (and
            (Pos ?to)
            (not (Pos ?from))
        )
    )
    
    (:action exit
        :parameters (?from ?to)
        :precondition (and
            (Room ?from) (Hall ?to) (Pos ?from)
            (Connected ?from ?to)
        )
        :effect (and
            (Pos ?to)
            (not (Pos ?from))
        )
    )
    
    (:action use_stairs ; climb
        :parameters (?from ?to)
        :precondition (and 
            (Hall ?from) (Hall ?to) (Pos ?from)
        )
        :effect (and
            (Pos ?to)
            (not (Pos ?from))
        )
    )
    
)