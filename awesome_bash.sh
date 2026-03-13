alias myjobs='watch -n 1 squeue --format=\"%.12i %.7P %.35j %.20S %.10M %.9l %R\" --me --sort=-p'
alias docancelall='squeue --user $USER --format "scancel %i" | sh'
alias gpus="watch -n 1 nvidia-smi"
alias code=/var/tmp/build/usr/share/code/code; 
alias gitgraph="git log --graph --all --pretty=format:'%C(auto)%h%d %s %C(black)%C(bold)%cr'"

cleannotebook(){ # Clean Jupyter Notebook outputs (for version control)
jupyter nbconvert \
	--ClearOutputPreprocessor.enabled=True \
	--ClearMetadataPreprocessor.enabled=True \
	--to=notebook --log-level=ERROR --inplace \
	"$1"	
}
count_re () { # Count Regex matches in a root dir
    find "${1:-.}" -type f | grep -E "$2" | wc -l
}
export PS1='\h | \W: '
