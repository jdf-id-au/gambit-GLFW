(load "glfw.o1")

(define main-window (glfw#make-window 100 100 "hello"))
(define should-quit? #f)

(glfw#window-on-key-press-set! main-window
     (lambda (window in-key scancode action modifier)
       (if (eq? in-key GLFW_KEY_0)
           (set! should-quit? #t))
       (let ((key (glfw-key->schmobj in-key))
             (x-pos (glfw#window-position-x window))
             (y-pos (glfw#window-position-y window)))
             
         (print key)
         (newline)
         (case key
           ((key-left)  (glfw#window-position-x-set! window (- x-pos 5)))
           ((key-right) (glfw#window-position-x-set! window (+ x-pos 5)))
           ((key-up)    (glfw#window-position-y-set! window (- y-pos 5)))
           ((key-down)  (glfw#window-position-y-set! window (+ y-pos 5)))))))
       
(let loop ()
  (glfw-native#poll-events)
  (glfw#window-swap-buffers main-window)
  (if should-quit? #f (loop)))
