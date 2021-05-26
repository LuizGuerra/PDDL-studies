(define (domain BLOCOS)

    (:requirements :strips )

    (:predicates
        (Bloco ?obj)
        (Livre ?obj)
        (NaMesa ?obj)
        (MaoVazia)
        (Sobre ?embaixo ?emcima)
    )
    
    (:action empilha
        :parameters (?emcima ?embaixo)
        :precondition (and
            (Bloco ?emcima) (Bloco ?embaixo) (not (MaoVazia))
            (not (NaMesa ?emcima))
        )
        :effect (and
            (MaoVazia) (Sobre ?embaixo ?emcima) (not (Livre ?embaixo)) 
        )
    )
    
    (:action desempilha
        :parameters (?obj)
        :precondition (and
            (Bloco ?obj) (not (MaoVazia)) (not (NaMesa ?obj)) (not (Livre ?obj))
        )
        :effect (and
            (Livre ?obj) (NaMesa ?obj) (MaoVazia)
        )
    )
    
    (:action pega_da_mesa
        :parameters (?obj)
        :precondition (and 
            (Bloco ?obj) (NaMesa ?obj) (Livre ?obj) (MaoVazia)
        )
        :effect (and
            (not (MaoVazia)) (not (NaMesa ?obj)) (not (Livre ?obj))
        )
    )
    
    (:action pega_da_pilha
        :parameters (?obj)
        :precondition (and 
            (Bloco ?obj) (not (NaMesa ?obj)) (not (Livre ?obj)) (MaoVazia)
        )
        :effect (and
            (not (MaoVazia))
        )
    )
)