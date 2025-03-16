help:
	@echo
	@echo "======================================================================"
	@echo "db:       open db w/ litecli"
	@echo "erd:      render ERD w/ d2"
	@echo "======================================================================"
	@echo

db:
	litecli data/db.sqlite

erd:
	D2_LAYOUT=tala d2 -t 103 --font-regular docs/erd/jet-brains-mono-nl-regular.ttf --watch docs/erd/erd.d2 docs/erd/erd.svg
