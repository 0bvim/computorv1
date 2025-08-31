
all:
	@echo yes | mix do escript.build + escript.install

clean:
	@rm computorv1

fclean: clean
	@mix clean

re: fclean all
