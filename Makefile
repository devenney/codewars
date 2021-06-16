.PHONY: deps
deps:
	yarn install

.PHONY: readme
readme:
ifdef KATA
	@printf "`source ./hack/codewars.sh && get_name ${KATA}`\n====\n\n" > solutions/$(KATA)/README.md
	@printf "* ID: `source ./hack/codewars.sh && get_id ${KATA}`\n" >> solutions/$(KATA)/README.md
	@printf "* Rank: `source ./hack/codewars.sh && get_rank ${KATA}`\n" >> solutions/$(KATA)/README.md
	@printf "* URL: `source ./hack/codewars.sh && get_url ${KATA}`\n" >> solutions/$(KATA)/README.md
	@printf "\nDescription\n----\n\n" >> solutions/${KATA}/README.md
	@printf "`source ./hack/codewars.sh && get_description ${KATA}`" >> solutions/${KATA}/README.md
else
	@echo KATA must be defined.
endif

.PHONY: yo
yo: deps
ifdef KATA
	@printf "$(KATA)\ngithub.com/devenney/codewars/solutions" | yo go
else
	@echo KATA must be defined.
endif

.PHONY: kata
kata: yo readme
