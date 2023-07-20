\***\* aliases.sh file shortcuts \*\***

alias ll='ls -la'
alias cls='clear'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cpwd='pwd|tr -d "\n"|pbcopy'
alias ip="curl icanhazip.com"
alias countfiles='ls -la -1 | wc -l'
alias ff='file=$(fzf --select-1 --exit-0); [ -n "$file" ] && code "$file"'

\***\* .gitconfig file shortcuts \*\***

s = status -sb
p = push -sb
cm = commit -m
gt = cd `rev-parse --show-toplevel`
last = log -1 HEAD --stat
diff = difftool -t vimdiff -y
pu = pull
cl = clone
a = add
b = branch
m = merge
co = checkout
rm = rm = rm --cached

Install FuzzyFinder:

1. https://github.com/junegunn/fzf

\***\* Adding fzf to windows global \*\***

---

@echo off
for /f "delims=" %%F in ('fzf') do start "" "%%F"

---

:: (Recommended script)

@echo off
for /f "delims=" %%F in ('fzf') do (
start /B "" "%%F"
timeout /t 1 >nul
)

Process:

  Step 1: Choose a Folder Location
          Select the folder you want to add to the $PATH. For this tutorial, let's assume you have a folder called "MyFolder" located at "C:\Path\to\MyFolder". Replace this path with the actual path to your folder.

  Step 2: Open Environment Variables
          Press the Windows key on your keyboard and type "Environment Variables." From the search results, select "Edit the system environment variables."

  Step 3: Open System Properties
          In the System Properties window, click on the "Environment Variables" button at the bottom right.

  Step 4: Edit Path Variable
          In the Environment Variables window, you'll see two sections: User Variables and System Variables. Look for the "Path" variable under the "System Variables" section and select it. Then click on the "Edit" button.

  Step 5: Add Folder to Path
          In the Edit Environment Variable window, click on the "New" button to add a new entry. Enter the full path to your folder, including "C:\Path\to\MyFolder" (without quotes). Click "OK" to save the changes.

  Step 6: Verify Path Addition
          To ensure the folder was added correctly, open the Command Prompt. You can do this by pressing Windows + R on your keyboard, typing "cmd" (without quotes), and pressing "Enter".

  Step 7: Check Path
          In the Command Prompt window, type "echo %PATH%" (without quotes) and press "Enter". This command will display the contents of your $PATH. Verify that the path to your folder, "C:\Path\to\MyFolder", is included in the list.

  Step 8: Test the Path
          To test if the folder is accessible from anywhere, open a new Command Prompt window and type the name of a file or program located within the "MyFolder" directory. For example, if you have a file named "myfile.txt" in "C:\Path\to\MyFolder", you can type "myfile.txt" (without quotes) and press "Enter". If the file opens or the program runs successfully, it means the $PATH is correctly configured.

\***\* Add Autocomplete in git bash terminal \*\***

1. Go to the official GitHub repository: https://github.com/bobthecow/git-flow-completion

2. Unzip the downloaded file to a folder of your choice.

3. paste the bash script only to "C:\Users\Jarvic"

4. Navigate to your bash_profile.sh in git installation folder

5. paste this code (change the file name in script if you modified the extracted file name):

# Source autocomplete

if [ -f ~/git-completion.bash ]; then
source ~/git-flow-completion.bash
fi

6. To test if autocomplete is working, type a Git command and press the Tab key twice. For example, try typing:
