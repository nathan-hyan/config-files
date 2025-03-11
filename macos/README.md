# MacOS Installation Guide

As a first requisite, you'll need to get access to this GitHub Repository... so if you are reading this. You're doing great so far.

## Homebrew

Most software gets installed with Homebrew, so let's install that first.

### 1. Installing Homebrew:
In a terminal, copy and paste the following command (source: [brew.sh](brew.sh))

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

This will take care of installing homebrew and making everything available. Make sure there are no caviats. If there are any, please comply so it install properly.

### 2. Installing Software:

Now that Homebrew is installed, let's install the **casks** *(applications)* and **formulae** *(extensions)* 

Casks ([Link to file](https://github.com/nathan-hyan/config-files/blob/main/macos/brew-casks)): 

    curl -L raw.githubusercontent.com/nathan-hyan/config-files/refs/heads/main/macos/brew-casks -o casks && xargs brew install < casks

Formulae ([Link to file](https://github.com/nathan-hyan/config-files/blob/main/macos/brew-formulae)): 

    curl -L raw.githubusercontent.com/nathan-hyan/config-files/refs/heads/main/macos/brew-formulae -o formulae && xargs brew install < formulae

### 3. Adding future casks / formulae to install list:

If there are any new casks or formulae that needs to be added to the list, first find it with the following command in the terminal:

    ./export_brew_packages.sh

This script will export the list of installed casks and formulae to a file called `brew_packages.txt`.


## Oh My Zsh!

Oh My Zsh! is used to personalize the terminal, enabling the use of themes and customizations.

Personally, i love the combination of OMZ! with Powerlevel 10k. So let's begin:

### 1. Installing Oh My Zsh!

The official page gives us a beautiful one-liner for the installation:

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

And that's pretty much it.

### 2. Installing Powerlevel 10k

The official repository says it's getting minimal support now so it might be better to start looking for a replacement... but in the meantime:

    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

Once it finishes cloning the repo, we have to add some command lines to the `.zshrc` file. But since we're copying that from this repo... it's not necessary.

So, copy the contents of the `.zshrc` files into `~/.zshrc` replacing everything. Reboot the terminal and the Powerlevel 10k configuration wizard should start

## iTerm2 Profile

In this repo there's a `iterm-profile.json` file that you need to download and apply it into iTerm2. This contains the colors, transparency settings and font settings (*In this case, MesloLGS NF for compatibility with Powerlevel10k*)

## More apps outside of Homebrew

There are some apps that cannot be installed with Homebrew, so let's install them manually.

**Cider**: https://cidercollective.itch.io/cider

## App configs recommendations

1. Disable **"Mouse Acceleration"** in `Apple Logo > System Settings... > Mouse > Advanced > Pointer acceleration` 
2. **Rectangle** won't start when the Mac turns on, change that in settings.
3. **Displaylink** won't start when the Mac turns on, change that in settings.
4. Install the "**Login Screen Extention Startup**" for Displaylink in the App icon in Taskbar
5. **Node Version Manager** is installed, but no **Node** version. Fix that installing the latest LTS version (`nvm install lts`)

## Setapp
Since Setapp it's its own thing, launch it and login. We're going to install the following apps from there:

1. Spark
2. Session
3. QuitAll

### Spark
Login with Google account, it should start working right away as expected.

### Session
Requires a "one-time password" that you can get entering your email. Once that is in order, enable notifications, reminders and done!

### QuitAll
It should start automatically at login, if it's that option is not checked, please do. Also, let's check the following checkboxes:

[x] Deselect apps by default
[x] Include Finder Windows in list
[x] Include Empty Trash in list
[x] Quit inactive apps after (1 hour)

And at the end, make sure that "Visual Studio Code" nor "Slack" are selected from the "Quit" list.
