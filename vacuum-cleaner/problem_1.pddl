(define (problem problem_1)

    (:domain vacuum)
    
    (:objects Wap_Vacuum Bedroom Bathroom Dust)
    
    (:init
        (Aspirador Wap_Vacuum)
        (Sala Bedroom)
        (Sala Bathroom)
        (Sujeira Dust)
        (Local Wap_Vacuum Bedroom)
        (Local Dust Bedroom)
        (Local Dust Bathroom)
    )
    
    (:goal (and (not (Local Dust Bathroom)) (not (Local Dust Bedroom))))
    
)