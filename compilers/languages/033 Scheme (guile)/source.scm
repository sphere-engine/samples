(define (do_it n)
	(define (print_it n)
		(display n)
		(newline))
	(cond ((not(= n 42))
		(print_it n)
		(do_it (read)))
		))

(do_it (read))