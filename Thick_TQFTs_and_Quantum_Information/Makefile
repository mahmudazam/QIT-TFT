
PROJECT=Thick_TQFTs_and_Quantum_Information
SECTIONS=\
  introduction\
  first_approach\
  connections\
  graphs\
  field_theory

PRJWD=$(shell pwd)

include ${PRJWD}/pre.mk

${PROJECT}.pdf: build ${BIB_DEPS} ${STY_DEPS} ${TEX_DEPS}

.PHONY: clean Clean ${SECTIONS}
include ${PRJWD}/post.mk

All: ${PROJECT}.pdf ${SECTIONS}

introduction: ${BIB_DEPS} ${STY_DEPS} ${TEX_DEPS}
	$(MAKE) -C $@

first_approach: ${BIB_DEPS} ${STY_DEPS} ${TEX_DEPS}
	$(MAKE) -C $@

connections: ${BIB_DEPS} ${STY_DEPS} ${TEX_DEPS}
	$(MAKE) -C $@

graphs: ${BIB_DEPS} ${STY_DEPS} ${TEX_DEPS}
	$(MAKE) -C $@

field_theory: ${BIB_DEPS} ${STY_DEPS} ${TEX_DEPS}
	$(MAKE) -C $@


