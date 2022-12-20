asciidoctor -b docbook $1

pandoc -f docbook -t beamer --metadata=theme=Warsaw --metadata=colortheme=beetle -o pres.pdf $(sed 's/.adoc/.xml/' <<< "$1")
