# FIREFOX OPEN SOURCE AUDIT
## A Capstone Project for OSS NGMC Course

**Course:** Open Source Software (CSE0002)
**Student Name:** Anshul
**Registration Number:** 24BCE10996
**Software Choice:** Mozilla Firefox (Web Browser)
**License:** Mozilla Public License 2.0 (MPL 2.0)

---

## 1. Introduction

Today, the programs running our phones, massive computers, and web platforms were mostly not created by a single business looking for a payout. People from all over the world actually worked together to build them and then gave them away for nothing. This shared effort is the true meaning of open source.

In this project, I will dive into these ideas by looking closely at Mozilla Firefox. I am studying Artificial Intelligence as a Computer Science student. I know that my future coding jobs will lean heavily on tools made by communities. Because of this, understanding how these free systems work is a mandatory skill for my career, not just a fun fact.

I picked Firefox for this assignment because its position in the tech world is highly unusual. It is a normal app that you and I use, but it fights directly against products made by giant corporations. Meanwhile, a group that does not care about making money controls it to ensure the web stays free. Over the next few sections, I am going to explain where Firefox came from. I will also break down its legal rules, talk about whether free software is ethically right, show how it fits into Linux, and compare it to closed alternatives. The end of this document also contains five shell scripts to prove my basic Linux terminal skills.

---

## 2. Part A: Origin and Philosophy

### A1. The Problem Firefox Was Created to Solve

To figure out why this browser was born, we have to travel back to the late nineties. Back then, a massive battle called the Browser Wars was happening. The internet was just starting to get famous outside of universities. The biggest player was Netscape Navigator, which was private software owned by a specific company. But Microsoft realized the internet could threaten their Windows empire. So they started giving away Internet Explorer for free every time someone bought Windows. This move almost killed Netscape.

**The Frustration and a Broken Ecosystem**
By the year 1998, Netscape was losing badly. Microsoft controlled over ninety percent of all users with Internet Explorer. Since they had won the war, Microsoft basically stopped adding new things to their browser. Bugs that could let hackers in were ignored for months. Web creators were forced to write their pages so they only looked good on Microsoft software. People grew extremely angry because the internet was designed to belong to everybody, but one massive corporation was locking it down.

**The Open Source Decision**
Staring at total failure, Netscape did something wild on January 22, 1998. They took their secret code and published it for anyone to read. They did not do this to be nice. It was a clear survival tactic inspired by a famous paper called *"The Cathedral and the Bazaar."* They figured out that while they lacked the cash to fight Microsoft, they could win by getting thousands of unpaid coders to help them innovate.

This wild idea started the Mozilla Organization. However, the original code they shared was gigantic and messy. A tiny group inside the project chose to start over. They made a completely new, super fast version and named it "Phoenix." Over time, the name changed to Firefox.

Ultimately, this project existed to fix a massive issue. People needed options, and the rules of the internet needed to stay public. The founders gave their work away to prevent any single business from owning the web. They made certain that a free option would survive forever.

### A2. The License What It Actually Says

The rules for using Firefox are written in the Mozilla Public License 2.0 (MPL 2.0). I read through these rules to see how they work.

**The Four Freedoms**
A group called the Free Software Foundation believes true free programs must grant you four specific rights:
1. **Freedom 0:** You are allowed to run the software whenever and however you want.
2. **Freedom 1:** You are allowed to read the code and alter it.
3. **Freedom 2:** You can hand out copies to your friends or coworkers.
4. **Freedom 3:** You can share the versions you changed with the whole world.

The MPL 2.0 checks all these boxes. Anyone on earth can download the browser, look inside, tweak the engine, and pass it around.

**Corporate Modification and Commercialization**
What happens if a business alters Firefox and tries to sell it? The MPL 2.0 deals with this using a file level rule. If a company changes the main files, they are forced by law to share those exact adjusted files with the public. But the rules do allow companies to combine the free code with their own private code. They can sell the final mixed product, but the original free parts must remain open. This is a very smart compromise that lets businesses use the technology without destroying the community project.

**GPL vs MIT Licensing: A Personal Perspective**
The GPL is a very harsh rule set. If your project includes even a tiny bit of GPL code, your entire project must be totally free and public. On the other hand, the MIT License is extremely relaxed. It allows developers to grab the code, change it, keep it secret, and sell it for cash. The only rule is you must mention who wrote the original part.
If I were making a big tool like an AI library, I would definitely pick the MIT License. I would want schools and businesses to use my work without fearing lawsuits. But if I were creating a secure chat app, I would pick the GPL. That way, bad actors or greedy tech giants could never hide my code to spy on people.

**Free Beer vs Free Freedom**
When people say "free as in free beer," they mean it costs zero dollars. When they say "free as in freedom," they mean you have the physical right to inspect and scramble the code.
Google Chrome is like the free drink. You never pay to install it, but the company keeps its tracking systems completely hidden. Firefox gives you both. You pay nothing, and you also get complete liberty. If the fans hate a new update, they have the total right to delete the bad parts and build a cleaner version.

### A3. The Ethics of Open Source

This topic really forces us to think about who should own basic knowledge.

**Should all software be open source?**
My personal view is that deep technical foundations should be free, but other things can stay private.
* **The Argument For:** Things like web browsers, computer security systems, and AI bases need to be public. Keeping these secret is highly risky. Businesses might steal your personal details without anybody noticing. Public code ensures safety because millions of eyes can check for errors.
* **The Argument Against:** Some programs take massive amounts of cash to develop. Think about complex video games or stock market bots. If laws demanded all code to be public, investors would never pay for these expensive projects. There are no free communities willing to build those things for nothing.

**Is it ethical for companies to profit from free community labor?**
Giant tech firms rely heavily on Linux to generate their billions. I believe this is completely fine if they give something back. When IBM uses Linux, they literally pay thousands of their own workers to write updates for Linux. That is a fair trade. But the situation turns evil when companies grab a free tool, charge money for it on their servers, and never donate a single line of code back to the original creators.

**Standing on the Shoulders of Giants**
Programmers often talk about standing on the shoulders of giants. This just means we never have to start our work from nothing. When I type a simple Python command, I am relying on the massive Linux core and fifty years of math created by geniuses. Free software makes startups possible. Without it, a new tech business would waste millions just trying to build a basic operating system before they could even sell a product.

---

## 3. Part B: Linux Footprint

Firefox is built deeply into the Linux universe. It serves as the standard web tool for almost every popular Linux distribution out there, including Ubuntu, Debian, Fedora, and Linux Mint.

**Installation Method**
You are never forced to compile the browser yourself. You can get it easily using a package manager:
* Debian or Ubuntu: `sudo apt install firefox` (Ubuntu shifted to Snap containers recently)
* Fedora: `sudo dnf install firefox`
* Arch Linux: `sudo pacman -S firefox`

**Key Directories and Filesystem Integration**
Once you install it, the browser scatters its parts into normal UNIX locations:
* **Binaries:** The actual program file sits inside `/usr/bin/firefox`.
* **Global Configurations:** Broad rules for everyone on the computer live in `/etc/firefox/`.
* **User Data:** Your private stuff like saved passwords and web history goes to `~/.mozilla/firefox/`.
* **Logs:** This browser avoids writing to the main `/var/log/syslog`. It prefers to dump crash errors directly into your personal user folder.

**User and Group Security**
The app always runs as a normal person. It refuses to need `root` powers. This was a massive security decision. Browsers execute random code from random websites every single second. If a dangerous site breaks into Firefox, the hacker only gets your normal user privileges. They cannot destroy the main operating system. Linux also utilizes extra tools like AppArmor to block the browser from touching sensitive files.

**Service Management**
We treat Firefox as a visual program, not a silent background worker like an Apache server. Because of this, nobody types `systemctl start firefox` to go on the internet. But if you are setting up a public mall directory screen or an automated testing rig, you actually can force Firefox to run silently as a systemd service.

**Update Model**
Speed is critical for browser patches because hackers move fast. On a Linux machine, Firefox grabs security fixes right from the central system package manager. When the Mozilla team patches a gap, the Linux volunteers package the fix immediately. Your computer downloads it automatically in the background.

---

## 4. Part C: The FOSS Ecosystem

Firefox does not stand alone. It acts as a giant puzzle piece in a much larger picture of free tech.

**Dependencies**
To display a website on Linux, the browser requires many other free toolkits to do the heavy lifting:
* **GTK:** Draws all the visual stuff on your screen, like the minimize buttons.
* **glibc:** The core library that translates commands to the Linux kernel.
* **NSS:** The privacy libraries built by Mozilla to manage secret web connections.
* **Mesa:** Pushes the hard graphical work over to your computer GPU.

**What Firefox has Enabled and Inspired**
Since the core code is entirely public, other developers have used it to launch new tools for very specific jobs:
* **Tor Browser:** This uses modified Firefox parts to create the best tool on earth for hiding your identity from spies.
* **LibreWolf:** A fan made version of Firefox that rips out every single telemetry tracker that Mozilla included.
* **Thunderbird:** An email client built by Mozilla that actually shares a huge chunk of its rendering brain with Firefox.

**Community and Governance**
A traditional group of rich executives does not run this project. The Mozilla Foundation handles the steering wheel. The workers operate on a Module Ownership System. They slice the giant codebase into smaller chunks. If a coder proves they are smart and reliable, they earn ownership of a chunk and get to approve new changes.
Everything happens in the sunlight. People report software glitches openly on a site called Bugzilla. The developers chat with each other in real time using a public platform named Matrix.

---

## 5. Part D: Open Source vs Proprietary

To really understand the value of Firefox, we have to look at Google Chrome. Chrome uses some shared parts, but the actual browser you download is absolutely secret and locked down. Google packs it full of data trackers.

### Comparison Table

| Subject | Open Source (Mozilla Firefox) | Proprietary Alternative (Google Chrome) |
| :--- | :--- | :--- |
| **Cost** | Free. Funded by search engine deals and charity. | Free. Funded by reading your data to show you ads. |
| **Security** | **Fully Open.** Every single line is readable by the public. | **Secret.** Only the core is public. The Google tracking parts are totally hidden. |
| **Support** | You ask for help on public forms and hope a volunteer answers. | Backed by endless corporate money and massive testing labs. |
| **Freedom** | **Total.** You can legally tear the app apart and build your own. | **None.** Doing that to the Google pieces is completely forbidden. |
| **Management** | **Community.** Guided by a charity that cares about a free web. | **Corporate.** Guided by Alphabet Inc to maximize ad profits. |
| **Advice** | Excellent choice if you care about privacy and keeping the web fair. | Extremely fast and smooth, but terrible if you hate being tracked. |

### Overall Verdict and Conclusion

Wrapping up this study, I genuinely highly recommend installing Firefox on your home laptop and work computers. Letting one massive ad company dictate the internet through Chromium is extremely dangerous. Firefox holds the line as the final major independent engine. Choosing it is basically casting a vote for privacy. 

Furthermore, jumping in to help is surprisingly simple. Trying to solve small visual glitches in the browser is a fantastic way to protect digital freedom while practicing your coding skills.

---

## 6. Conclusion

Finishing this assignment completely shifted how I view free software. It is definitely not just a bucket of free code files floating on GitHub. Analyzing Firefox proved to me that open collaboration is the only way to stop massive tech monopolies. The clever rules of the MPL 2.0 show how a community can survive inside a hungry capitalist market. 

Typing out the shell scripts was also incredibly useful. I feel much more comfortable moving around the Linux terminal, fixing permissions, and searching through messy text logs. This project taught me a lot about ethics in technology. As I move deeper into the AI space, I am going to make sure I embrace this spirit of sharing and public review in my actual career.

---

## 7. References

1. Mozilla Foundation. (2024). *The Mozilla Manifesto*. Retrieved from https://www.mozilla.org/about/manifesto/
2. Mozilla. (2024). *Mozilla Public License 2.0*. Retrieved from https://www.mozilla.org/MPL/2.0/
3. Free Software Foundation. (2024). *What is Free Software?* Retrieved from https://www.fsf.org/about/what-is-free-software
4. Raymond, E. S. (1999). *The Cathedral and the Bazaar*. O'Reilly Media.
5. Torvalds, L., & Diamond, D. (2001). *Just for Fun: The Story of an Accidental Revolutionary*. HarperBusiness.
6. The Linux Command Line. (2024). William Shotts.

---

## 8. Appendix: Shell Script Source Code

Below are the five shell scripts written and tested on an Ubuntu Linux environment (WSL2). They demonstrate the application of core shell scripting methodologies and syntax handling.

---

### Script 1: System Identity Report
**Purpose:** Acts as an automated welcome diagnostic, parsing system data to display the active OS, Kernel version, user context, and the underlying OS license mandates.
**Concepts Used:** Environmental variables, `echo` commands, subshell command substitution (`$()`), and conditional `if` logic for file validation.

```bash
#!/bin/bash
# Script 1: System Identity Report
# Author: Anshul
# Course: Open Source Software (OSS)
# Description: Gathers and displays system information and OS license

STUDENT_NAME="Anshul"
SOFTWARE_CHOICE="Mozilla Firefox"

echo "=========================================="
echo "      Open Source Audit Report"
echo "      Student: $STUDENT_NAME"
echo "      Software: $SOFTWARE_CHOICE"
echo "=========================================="

# Extract OS Name
if [ -f /etc/os-release ]; then
    OS_NAME=$(grep "^PRETTY_NAME" /etc/os-release | cut -d'"' -f2)
else
    OS_NAME=$(uname -o)
fi

# Gather System info via command substitution
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE_TIME=$(date '+%Y-%m-%d %H:%M:%S')

echo "OS Distribution : $OS_NAME"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $DATE_TIME"
echo "------------------------------------------"
echo "LICENSE NOTICE: The Linux kernel running this"
echo "system is licensed under the GNU General Public"
echo "License v2 (GPLv2)."
echo "=========================================="

#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Anshul

PACKAGE=${1:-"firefox"}  # Default to firefox if no argument provided

echo "=========================================="
echo "      FOSS Package Inspector"
echo "=========================================="

# Check if package is installed
if command -v "$PACKAGE" &>/dev/null; then
    echo "STATUS: [+] $PACKAGE is installed on this system."
    # Get version if it's firefox
    if [ "$PACKAGE" == "firefox" ]; then
        firefox --version 2>/dev/null
    fi
else
    echo "STATUS: [-] $PACKAGE is NOT installed."
fi

echo "------------------------------------------"
echo "Philosophy Note:"
# Case statement to print philosophy based on package name
case "$PACKAGE" in
    firefox)
        echo "Firefox: A nonprofit browser fighting for an open web."
        ;;
    httpd|apache2)
        echo "Apache: The web server that built the open internet."
        ;;
    mysql)
        echo "MySQL: Open source at the heart of millions of apps."
        ;;
    git)
        echo "Git: The tool Linus Torvalds built when proprietary failed him."
        ;;
    python3)
        echo "Python: A language shaped entirely by community collaboration."
        ;;
    *)
        echo "An open source tool contributing to the vast Linux ecosystem."
        ;;
esac
echo "=========================================="


#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Anshul

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "$HOME/.mozilla")

echo "=========================================="
echo "      Directory Security & Disk Audit"
echo "=========================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Extract size using du and cut
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        printf "%-25s => Permissions: %-20s | Size: %s\n" "$DIR" "$PERMS" "$SIZE"
    else
        echo "$DIR => DOES NOT EXIST on this system."
    fi
done

echo "------------------------------------------"
echo "Note: The ~/.mozilla directory holds Firefox"
echo "profiles. It must remain strictly owned by the"
echo "user to prevent security breaches."
echo "=========================================="


#!/bin/bash
# Script 4: Log File Analyzer
# Author: Anshul

LOG_FILE="/var/log/syslog"

echo "=========================================="
echo "      System Log File Analyzer"
echo "=========================================="

if [ -f "$LOG_FILE" ]; then
    echo "LOG FILE: $LOG_FILE"
    echo "------------------------------------------"

    # Count total lines
    TOTAL_LINES=$(wc -l < "$LOG_FILE")
    echo "Total Lines: $TOTAL_LINES"

    # Count lines containing 'error' (case insensitive)
    ERROR_COUNT=$(grep -i "error" "$LOG_FILE" | wc -l)
    echo "Error Entries: $ERROR_COUNT"

    # Count lines containing 'firefox' (case insensitive)
    FIREFOX_COUNT=$(grep -i "firefox" "$LOG_FILE" | wc -l)
    echo "Firefox Activity: $FIREFOX_COUNT"

    # Show last 5 error lines
    echo "------------------------------------------"
    echo "Last 5 Error Entries:"
    grep -i "error" "$LOG_FILE" | tail -n 5
else
    echo "LOG FILE: $LOG_FILE NOT FOUND."
fi

echo "=========================================="


#!/bin/bash
# Script 5: Process Manager & System Health
# Author: Anshul

echo "=========================================="
echo "      Process Manager & Health Check"
echo "=========================================="

# Check if firefox is running
if pgrep -x "firefox" > /dev/null; then
    echo "STATUS: [+] Firefox is currently RUNNING."
    # Get memory usage for firefox
    FIREFOX_MEM=$(ps aux | grep "firefox" | grep -v grep | awk '{print $6}' | paste -sd+ - | bc) 2>/dev/null
    echo "Firefox Memory Usage: ${FIREFOX_MEM}K"
else
    echo "STATUS: [-] Firefox is currently STOPPED."
fi

echo "------------------------------------------"

# List top 5 memory consuming processes
echo "Top 5 Memory Consuming Processes:"
ps aux --sort -rss | head -n 6 | tail -n 5 | awk '{printf "%-10s %-10s %-10s %s\n", $2, $3, $4, $11}'

echo "------------------------------------------"

# Check disk usage
echo "Disk Usage:"
df -h / | tail -n 1 | awk '{print "Total: " $2 " | Used: " $3 " | Available: " $4}'

echo "=========================================="
