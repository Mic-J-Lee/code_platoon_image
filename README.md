Code Platoon Base Image
===========================

Running Instructions
--------------

First, sign up for a docker account and make sure you have [Docker Desktop](https://www.docker.com/products/docker-desktop) installed and running and signed in.

With your terminal in the codeplatoon directory, run the 'build' script by entering this into your prompt:

`scripts/build`

<details><summary>What's going on?</summary>
<br>
Inside `scripts/build`, you might see something like this:

```bash
#! /bin/bash
docker pull codeplatoon/base && /
docker run -it --name codePlatoon -v "$(pwd)":/usr/local/src/code_platoon -v "$(pwd)"/.bashrc:/root/.bashrc codeplatoon/base
```

The first line includes our [shebang](https://bash.cyberciti.biz/guide/Shebang), the absolute path to our bash interpreter.

The subsequent lines include the commands we need to set up our Linux container and open a console to it. If you copied and pasted this line into your command line, that would be the same as running the script.

</details>
<br>

You should see a command prompt that looks something like this: 
```
root@7b2f17f8d003:/usr/local/src/code_platoon $ 
```

Welcome to your Linux container! From now on, you'll want to enter your container with `scripts/console`. The container already has a lot of software installed, including python, node.js, and git! Inside the code_platoon directory, any file changes you make on your host machine will be reflected in the container, and vice versa!

Try to `touch` some files, `ls` list them, and `rm` delete them, both from your home(host) prompt and our container prompt. You can also edit/view files with a text editor or `cat`.

You'll be keeping all the files for your projects in this folder, so that you can use the software included in the container to run them!

<details><summary>to run a Django server</summary>
<br>
Run this command from your host prompt:
```bash
scripts/server8000
```
Now, inside the container prompt, run `./manage.py runserver 0.0.0.0:8000` to start your django server. You can access this in your browser at https://localhost:8000
</details>


<br>