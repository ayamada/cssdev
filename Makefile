# NB: htdocs内で実行している点に注意


SRC_FILE := c
MODULE_NAME := cssgen.cgi

test:
	cd htdocs && rlgosh -I. -E 'load "$(SRC_FILE)"' -E 'use gauche.test' -E "test-start '$(MODULE_NAME)" -E "test-module '$(MODULE_NAME)" -E 'test-end :exit-on-failure #t' -Eexit

repl:
	cd htdocs && rlgosh -I. -E 'load "$(SRC_FILE)"' -E 'select-module $(MODULE_NAME)' -i

        
# vim:set ft=make:
