(define (problem problem_1)

    (:domain foo)
    
    (:objects Room_01 Room_02 Room_03 Room_04)
    
    (:init
        (Room Room_01)
        (Room Room_02)
        (Room Room_03)
        (Room Room_04)
        
        (Dirt Room_01)
        (Dirt Room_02)
        (Dirt Room_03)
        (Dirt Room_04)
        
        (Connected Room_01 Room_02)
        (Connected Room_02 Room_03)
        (Connected Room_03 Room_04)
        (Connected Room_04 Room_01)
        
        (Pos Room_01)
    )
    
    (:goal
        (and 
            (not (Dirt Room_01)) (not (Dirt Room_02)) (not (Dirt Room_03)) (not (Dirt Room_04))
        )
    )
    
)