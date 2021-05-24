(define (domain foo)

    (:requirements :strips )

    (:predicates
        (Pos ?loc)
        (Room ?loc)
        (Door ?loc ?loc)
        (Inner ?loc ?loc)
        (Light_on_at ?loc)
        (Open_door_at ?loc)
        (Window_open_at ?loc)
    )
    
    (:action enter_room
        :parameters (?from ?to)
        :precondition (and 
            (Room ?from) (Room ?to) (Pos ?from)
            (Inner ?to ?from) (Open_door_at ?to)
        )
        :effect (and
            (Pos ?to)
            (not (Pos ?from))
        )
    )
    
    (:action exit_room_and_close_door
        :parameters (?from ?to)
        :precondition (and 
            (Room ?from) (Room ?to) (Pos ?from)
            (Inner ?from ?to) (Open_door_at ?from)
            (not (Light_on_at ?from))
        )
        :effect (and
            (Pos ?to)
            (not (Pos ?from))
            (not (Open_door_at ?from))
        )
    )
    
    ; Open inward door
    (:action open_door
        :parameters (?from ?to)
        :precondition (and 
            (Pos ?from) (not (Open_door_at ?to)) (Inner ?to ?from)
        )
        :effect (and
            (Open_door_at ?to)
        )
    )
    
    ; Open door I am in
    (:action open_door
        :parameters (?loc)
        :precondition (and 
            (Pos ?loc) (not (Open_door_at ?loc))
        )
        :effect (and
            (Open_door_at ?loc)
        )
    )
    
    (:action close_door
        :parameters (?from ?to)
        :precondition (and 
            (Pos ?from)  (Open_door_at ?to) (Inner ?to ?from)
        )
        :effect (and
            (not (Open_door_at ?to))
        )
    )
    
    (:action turn_light_on
        :parameters (?loc)
        :precondition (and 
            (Pos ?loc) (not (Light_on_at ?loc))
        )
        :effect (and
            (Light_on_at ?loc)
        )
    )
    
    (:action turn_light_off
        :parameters (?loc)
        :precondition (and 
            (Pos ?loc) (Light_on_at ?loc)
        )
        :effect (and
            (not (Light_on_at ?loc))
        )
    )
    
    (:action open_window
        :parameters (?loc)
        :precondition (and 
            (Pos ?loc) (Light_on_at ?loc) (not (Window_open_at ?loc))
        )
        :effect (and
            (Window_open_at ?loc)
        )
    )
    
    (:action close_window
        :parameters (?loc)
        :precondition (and 
            (Pos ?loc) (Light_on_at ?loc) (Window_open_at ?loc)
        )
        :effect (and
            (not (Window_open_at ?loc))
        )
    )
    
    
    
)