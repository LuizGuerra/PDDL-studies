(define (problem problem_2)

    (:domain foo)
    
    (:objects R1 R2 R3 R4 R5 R6 Hallway)
    
    (:init
        (Room R1) (Room R2) (Room R3) (Room R4) (Room R5) (Room R6) (Room Hallway)
        (Inner R1 R2) (Inner R2 R3) (Inner R3 Hallway)
        (Inner R4 R5) (Inner R5 R6) (Inner R6 Hallway)
        
        (Window_open_at R1) (Window_open_at R2) (Window_open_at R3)
        (Window_open_at R4) (Window_open_at R5) (Window_open_at R6)
        
        (Pos R2)
    )
    
    (:goal
        (and 
            (not (Window_open_at R1))
            (not (Window_open_at R2))
            (not (Window_open_at R3))
            (not (Window_open_at R4))
            (not (Window_open_at R5))
            (not (Window_open_at R6))
        )
    )
    
)