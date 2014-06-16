.PHONY: all clean

filename=book development with version control.pdf

all:
	pandoc -o '$(filename)' politics.md

clean:
	rm '$(filename)'

view: all
	nohup evince '$(filename)' &>/dev/null &
