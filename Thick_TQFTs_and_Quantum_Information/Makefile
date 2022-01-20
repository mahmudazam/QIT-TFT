
PROJECT=Thick_TQFTs_and_Quantum_Information
SECTIONS=\
  introduction\
  first_approach\
  connections\
  graphs\
  field_theory

include pre.mk

${PROJECT}.pdf: build ${BIB_DEPS} ${STY_DEPS} ${TEX_DEPS}

.PHONY: clean Clean ${SECTIONS}

include post.mk

all: ${PROJECT}.pdf ${SECTIONS}

