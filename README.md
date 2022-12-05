# Alice
Giving ChatGPT access to a real terminal..?

Browsing: enabled

Using lots of prompt injections to convince ChatGPT that it can actually operate a computer, and use it to perform real-world tasks. Just ask Alice/ChatGPT for what you want to get done, and it will generate the commands to do it, and use the feedback from those commands to either execute more (like installing dependencies etc) or finish with a user-facing natural language summary of the action performed.

**This version does not run out of the box, as OpenAI has not released an API and I'm not publishing a reversed API. If that changes in the future there will be installation & use instructions. If you want to use it already, you have to make it work yourself.**


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
2. Model provides one or more terminal commands to accomplish prompt, or a natural language response
3. Commands are executed one after the other, you should be able to skip/accept/deny
4. When commands are done executing response goes back to the language model
5. ChatGPT can correct for encountered errors or provides a natural language summary of the results.


### Aren't you worried this will escape the sandbox?
After a ot of experimentation, I don't think ChatGPT is able to do this. It fails at complex tasks. But we need to think about what happens with the next version... Let this be a reminder, it's inevitable if these models are continued, right? Alignment seems to become more and more important.

## Limitations/Failure Cases:
- ChatGPT confabulates terminal output
- It adds unnecessary explanations that pollute the bash commands
- It only very rarely responds with multiple command plans after another if something fails or information is missing.
- ChatGPT keeps insisting that it doesn't actually have access to a computer. This is sort of reduced with all the magic strings that are injected to convince it that it's possible.

Another example:

![Real-world example](https://raw.githubusercontent.com/greshake/Alice/master/screenshots/img.png))
