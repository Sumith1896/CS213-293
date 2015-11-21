for file in *.txt
do
    if [[ $file =~ [0-9] ]]; then
    	newname="Assign"$(sed 's/[^ 0-9]*//g' <<< "$file")
    	mkdir -p "${newname}"
    	mv "${file}" "problem.txt"
    	mv "problem.txt" "${newname}"/
    fi
done