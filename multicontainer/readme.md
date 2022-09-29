Question:

Create a multi-pod container by name “multi-container-pod” with below-mentioned details:


First container


name: main
Image name: busybox:1.28
args: – /bin/sh – -c – > i=0; while true; do echo “$i: $(date)” >> /var/log/cka-exam.log; i=$((i+1));
 sleep 1; done
volumeMount: /var/log
volumeName: main-volume

 

Second container

name: sidecar
Image name: busybox:1.28
args: [/bin/sh, -c, ‘tail -n+1 -F /var/log/cka-exam.log’]
volumeMount: /var/log
volumeName: main-volume

 

check the sidecar container’s log and store it’s output under /tmp/output.txt



AUTOCOMPLETE COMMAND

autoload -Uz compinit
compinit