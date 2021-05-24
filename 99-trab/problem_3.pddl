(define (problem problem_3)

    (:domain foo)
    
    (:objects R1 R2 R3 R4 R5 R6 Hallway)
    
    (:init
        (Room R1) (Room R2) (Room R3) (Room R4) (Room R5) (Room R6) (Room Hallway)
        (Inner R1 R2) (Inner R2 R3) (Inner R3 Hallway)
        (Inner R4 R5) (Inner R5 R6) (Inner R6 Hallway)
        
        (Open_door_at R4) (Open_door_at R5) (Open_door_at R6)
        
        (Light_on_at R1) (Light_on_at R2) (Light_on_at R3)
        
        (Window_open_at R1) (Window_open_at R2) (Window_open_at R3)
        
        (Pos R1)
    )
    
    (:goal
        (and 
            (not (Open_door_at R1))
            (not (Open_door_at R2))
            (not (Open_door_at R3))
            (not (Open_door_at R4))
            (not (Open_door_at R5))
            (not (Open_door_at R6))
            
            (not (Light_on_at R1))
            (not (Light_on_at R2))
            (not (Light_on_at R3))
            (not (Light_on_at R4))
            (not (Light_on_at R5))
            (not (Light_on_at R6))
            
            (not (Window_open_at R1))
            (not (Window_open_at R2))
            (not (Window_open_at R3))
            (not (Window_open_at R4))
            (not (Window_open_at R5))
            (not (Window_open_at R6))
            
            (Pos Hallway)
        )
    )
    
)