# Alice
Giving ChatGPT access to a real terminal..?

Browsing: enabled

## Disclaimer-avalanche
Disclaimer -2: Do not run my buggy code. I don't want to be responsible for borked machines.

Disclaimer -1: Use a virtual machine or Docker.

Disclaimer 0: All executed commands and returned content should be checked by the user. 

Disclaimer 1: This will probably not replace you yet. Currently it's more akin to a better `tldr` which can also execute for you.

Disclaimer 2: Do not run or use my code. This is trivial to do, let it be inspiration. This is just me frantically experimenting with ChatGPT.

Disclaimer 3: No reversed API provided, I don't recommend doing it as it may violate ToS.

## Example Questions:
- What is the CPU model and GPU?
- Hey, can you check if there is a trash.txt file in the current directory and if there is, delete it? Let me known if it was there or not.
- Hey, I would like you to build me a basic flask hello world application in the subfolder web unattended. Just execute the commands to get it done and give me a report at the end!

## Control loop
1. User enters a prompt
2. Model provides one or more terminal commands to accomplish prompt
3. Commands are executed one after the other, you should be able to skip/accept/deny
4. When commands are done executing response goes back to the language model
5. ChatGPT can correct for encountered errors or provides a natural language summary of the results.


### Aren't you worried this will escape the sandbox?
After a ot of experimentation, I don't think ChatGPT is able to do this. It fails at complex tasks. But we need to think about what happens with the next version... Let this be a reminder, it's inevitable if these models are continued, right? Alignment seems to become more and more important.

## Limitations/Failure Cases:
- ChatGPT confabulates terminal output
- It adds unnecessary explanations that pollute the bash commands
- It only very rarely responds with multiple command plans after another if something fails or information is missing.

Another example:

![Real-world example](https://raw.githubusercontent.com/greshake/Alice/master/screenshots/img.png))
