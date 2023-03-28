# Kubernetes

```bash
# use k instead of kubectl for commands
echo 'alias k=kubectl' >>~/.bashrc

# see api resources and their short version (eg: Deployment, Pod, ns, vs)
kubectl get api-resources

```


# Helm

# Concourse

```bash
fly targets

```

# Bash

```bash

# Protect text inside so it has literal meaning. With them any kind of interpretation by Bash is ignored
'' 

# Protect text inside form being split into multiple arguments. Yet, allow subistitutions to occur.
" "

# Replace newline with comma (eg: sort will output one entry per line but you want a single line with comma separated values)


# Setting this flag will cause the shell to exit when a command fails
# Good when you want every command in your script to succeed
set -e 

# Use if you want to run a job in the background and you will exit the shell before the command completes
# If you use only & the job is still a child process of the bash shell, and when you exit, shell will send a hangup signal to all its children processes
nohup 
```