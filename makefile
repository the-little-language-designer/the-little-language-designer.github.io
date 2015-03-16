help:
	#
	# dependencies ::
	#   bundle, jekyll
	#
	#
	# run   :: use jekyll serve to run it
	#
	# clean :: note that, this will also clean up
	#          backup files that ended by "~"
	#
	#
	#   please read the "makefile" for more informations
	#   happy making ^_^
	#

run:
	cat _config.yml local.yml > _config-local.yml

	 jekyll serve       \
	  --config  _config-local.yml  \
	  --watch                      \
	  --drafts

clean:
	rm -f                  \
	*~ */*~ */*/*~ */*/*/*~  */*/*/*/*~

kkk:
	bundle exec
