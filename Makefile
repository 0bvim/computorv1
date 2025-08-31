
.PHONY: all
all:
	@echo yes | mix do escript.build + escript.install

.PHONY: clean
clean:
	@rm computor

.PHONY: fclean
fclean: clean
	@mix clean

.PHONY: re
re: fclean all
