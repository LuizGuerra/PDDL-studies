; Move person through rooms and grab items while doing it
(define (problem problem_1)

    (:domain connected-rooms)
    
    (:objects Person Smartphone Bathroom Bedroom Living_Room)
    
    (:init
        (Entity Person)
        (Entity Smartphone)
        
        (Room Bathroom)
        (Room Bedroom)
        (Room Living_Room)
        
        (Connection Bathroom Bedroom)
        (Connection Bedroom Living_Room)
        
        (Place Person Bathroom)
        (Place Smartphone Bedroom)
    )
    
    (:goal (and (Place Smartphone Person) (Place Person Living_Room)))
    
)