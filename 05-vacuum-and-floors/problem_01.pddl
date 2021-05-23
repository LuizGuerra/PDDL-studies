(define (problem problem_1)

    (:domain foo1)
    
    (:objects Room_A1 Room_A2 Room_B1 Room_B2 Hall_01 Hall_02)
    
    (:init
        (Room Room_A1) (Dirt Room_A1)
        (Room Room_A2) (Dirt Room_A2)
        
        (Room Room_B1) (Dirt Room_B1)
        (Room Room_B2) (Dirt Room_B2)
        
        (Hall Hall_01)
        (Hall Hall_02)
        
        (Connected Room_A1 Hall_01) (Connected Room_A2 Hall_01)
        (Connected Room_B1 Hall_02) (Connected Room_B2 Hall_02)
        (Connected Hall_02 Hall_01)
        
        (Connected Hall_01 Room_A1) (Connected Hall_01 Room_A2)
        (Connected Hall_02 Room_B1) (Connected Hall_02 Room_B2)
        (Connected Hall_01 Hall_02)
        

        (Pos Hall_01)
    )
    
    (:goal
        (and 
            (not (Dirt Room_A1)) (not (Dirt Room_A2)) (not (Dirt Room_B1)) (not (Dirt Room_B2)) 
        )
    )
    
)