.ONESHELL:

help:
	@
	echo -e " \E[33;1m                                                           \E[0m "
	echo -e " \E[33;1m   dependencies                                            \E[0m "
	echo -e " \E[33;1m     bundle & jekyll                                       \E[0m "
	echo -e " \E[33;1m                                                           \E[0m "
	echo -e " \E[33;1m                                                           \E[0m "
	echo -e " \E[33;1m   Makefile functions                                      \E[0m "
	echo -e " \E[33;1m     run                                                   \E[0m "
	echo -e " \E[33;1m        use jekyll serve to run it                         \E[0m "
	echo -e " \E[33;1m     clean                                                 \E[0m "
	echo -e " \E[33;1m	  clean up backup files that ended by '~'	     \E[0m "
	echo -e " \E[33;1m                                                           \E[0m "
	echo -e " \E[33;1m                                                           \E[0m "
	echo -e " \E[33;1m   please read the Makefile for more informations          \E[0m "
	echo -e " \E[33;1m							     \E[0m "
	echo -e " \E[33;1m   I wish you happy making ^-^                             \E[0m "
	echo -e " \E[33;1m                                                           \E[0m "

run:
	cat _config.yml local.yml > _config-local.yml

	 jekyll serve       \
	  --config  _config-local.yml  \
	  --watch                      \
	  --drafts

clean:
	find . -name .*~ -exec rm {} \;

