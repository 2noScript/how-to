
# $1 … $9	Parameter 1 ... 9
# $0	Name of the script itself
# $1	First argument
# ${10}	Positional parameter 10
# $#	Number of arguments
# $$	Process id of the shell
# $*	All arguments
# $@	All arguments, starting from first
# $-	Current options
# $_	Last argument of the previous command



# Print the name of the script
echo "Name of the script: $0"

# Print parameters from $1 to $9 (if available)
for i in {1..9}; do
  eval "echo Parameter $i: \$$i"
done

# Print the 10th parameter (if available)
if [ $# -ge 10 ]; then
  echo "Parameter 10: ${10}"
fi

# Print the number of parameters
echo "Number of parameters: $#"

# Print the Process ID of the current shell
echo "Process ID of the current shell: $$"

# Print all parameters as a single string
echo "All parameters (as a single string): $*"

# Print all parameters, with each parameter as a separate string
echo "All parameters (each parameter as a separate string): $@"

# Print the current shell options
echo "Current shell options: $-"

# Print the last argument of the previous command
echo "Last argument of the previous command: $_"


