(define (domain connected-rooms)

    (:requirements :strips )

    (:predicates
        (Entity ?obj)
        (Room ?obj)
        (Place ?obj ?obj)
        (Connection ?obj ?obj)
    )

    (:action move
        :parameters (?obj ?from ?to)
        :precondition (and (Entity ?obj) (Room ?from) (Room ?to) (Place ?obj ?from) (Connection ?from ?to))
        :effect (and (Place ?obj ?to) (not (Place ?obj ?from)))
    )

    (:action grab
        :parameters (?obj ?ent ?loc)
        :precondition (and (Entity ?obj) (Entity ?ent) (Room ?loc) (Place ?obj ?loc) (Place ?ent ?loc))
        :effect (and (Place ?obj ?ent) (not (Place ?obj ?loc)))
    )
    
)