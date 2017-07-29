#lang typed/racket

(require racket/trace)
(require racket/bitstring)

(define (hello) 'World)

;Trace
(define (ecl-trace-right tr) ((format #t "~s~%") tr))
(define (ecl-trace-left tr) (tr (format #t "~s~%")))

;REPL tests:
; TODO

(define (envr v) (unquote v))

; Environment
(: envr (-> String Boolean))
(define (envr str) ())

;REPL tests
; TODO

; Continuation
(: )
(define (cont ) ())

;REPL tests
;TODO


; Usual Untyped Lambda Interpreter
(: intr (-> Symbol (-> Symbol Value)))
(define (intr expr env)
    (cond [(symbol? expr) (env expr)]
          [(pair? expr) (cond
                            [(eq? '\ (car expr)) (intr (lambda (x) (cdr(expr)) env(x))) (car(cdr expr)))] ;\ interpreted as a lambda
                            [else ((car expr) (intr (cdr expr) env))] ;otherwise a pair is an application
          
	  
    	  [else ('expr)])) ;everything else is not evaluated

(intr 'atom)

; Usual Typed Lambda Interpreter


; Computational Lambda Interpreter


; Combinator Logic Interpreter


; Jot Interpreter (Base of the Tower - level 0)
(: jot ())
(define jot () ())


; Zot Interpreter (level 0)

; Add types as early as possible (it helps !)
; Research fixed points
; Solves equations
; Research Interpreter variations
; Discover the tree of computation :-)
; compilation as normalization/reduction/partial interpretation ?




