(define (domain vacuum)

    (:requirements :strips )

    (:predicates
        (Aspirador ?asp)
        (Sala ?loc)
        (Local ?obj ?loc)
        (Sujeira ?obj)
    )
    
    (:action clean
        :parameters (?suj ?asp ?loc)
        :precondition (and (Sujeira ?suj) (Sala ?loc) (Aspirador ?asp) (Local ?asp ?loc) (Local ?suj ?loc))
        :effect (and (not (Local ?suj ?loc)))
    )

    (:action move
        :parameters (?asp ?from ?to)
        :precondition (and (Aspirador ?asp) (Local ?asp ?from) (Sala ?from) (Sala ?to))
        :effect (and (Local ?asp ?to) (not (Local ?asp ?from)))
    )
)