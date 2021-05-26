(define (problem BLOCOS1)

    (:domain BLOCOS)
    
    (:objects A B C D)
    
    (:init
        (Bloco A) (Bloco B) (Bloco C) (Bloco D)
        (Livre A) (Livre B) (Livre C) (Livre D)
        (NaMesa A) (NaMesa B) (NaMesa C) (NaMesa D)
        (MaoVazia)
    )
    
    (:goal (and 
        (Sobre D C) (Sobre C B) (Sobre B A)
    ))
    
)