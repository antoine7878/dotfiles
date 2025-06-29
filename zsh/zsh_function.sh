function g() {
	if [ $# -eq 0 ]; then
		echo "Error: Commit message is required"
		echo "Usage: gitacp \"your commit message\""
		return 1
	fi
	git add -A
	git commit -m "$1"
}
alias g=g

function vogo() {
	git clone $1 repo_vogosphere
	mv repo_vogosphere/.git .
	rm -rf repo_vogosphere
}
alias vogo=vogo

function loop() {
	for ((i = 0; i < $1; i++)); do
		eval ${*:2}
	done
}
alias loop=loop
