# docker-gitolite

Some changes

0. Use elsdoerfer/gitolite:21fcb5fc33e5 image which I kept to jimme/docker-gitolite:openssh-6-6p1
This is because it is using openssh-6.6p1, the `ssh-keygen -f -l` fingerprinting validation will not fail

See https://github.com/sitaramc/gitolite/commit/ed807a40c6683960e357bc995b3acf721ec088b4

After openssh 6.8, there is a change in fingerprinting validation, which gitolite will fail right now
I will move to latest gitolite once elsdoerfer upgrade docker-gitolite accordingly

1. add some locales to elsdoerfer/gitolite

My client always complain could not set locales 

2. My gitolite setup need repositories to be shared with cgit and reviewboard
So change UMASK to 0022
