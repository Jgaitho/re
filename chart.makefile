# chart.makefile
# make all files OUTPUT/chart*

output = ../data/v6/output

#targets = chart-avm-variants-synthetic-data-chart1.txt
targets = $(output)/chart-avm-variants-chart1.txt \
		  $(output)/chart-avm-variants-synthetic-data-chart1.txt


.Phony: all
all: $(targets)

$(output)/chart-avm-variants-chart1.txt: \
	chart-avm-variants.R \
	$(output)/e-avm-variants.rsave
	Rscript chart-avm-variants.R

$(output)/chart-avm-variants-synthetic-data-chart1.txt: \
	chart-avm-variants-synthetic-data.R \
	$(output)/e-avm-variants-synthetic-data.rsave
	Rscript chart-avm-variants-synthetic-data.R

