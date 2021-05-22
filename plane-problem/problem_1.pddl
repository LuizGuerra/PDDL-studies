(define (problem problema1)

    (:domain transporte)
    
    (:objects Boing_3347 SalgadoFilho Galeao Encomenda)
    
    (:init
        (Aviao Boing_3347)
        (Aeroporto SalgadoFilho)
        (Aeroporto Galeao)
        (Carga Encomenda)
        (Local Encomenda SalgadoFilho)
        (Local Boing_3347 Galeao)
    )
    
    (:goal (Local Encomenda Galeao))
    
)