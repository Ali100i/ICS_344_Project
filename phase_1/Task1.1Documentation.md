# Phase 1 Documentation

## Task 1.1 

On this task we used the Kali Linux Metasploit framework to compromise a service on the Metasploitable2 victim machine.

---
## Step 1: Identify the attacker (Kali Linux) and the victim (Metasploitable 2) IP addresses
Before attacking, we need to know the IP addresses to ensure that the attack will be directed toward the desired target.
- **IP addresses screenshots**:
  - ![Kali linux IP address](./Task1Screenshots/Step1KaliIP.png)
  - ![Metasploitable 2 IP address](./Task1Screenshots/Step1MetasploitableIP.png)
## step 2: ensuer that kali is connected to the Metasploitable 2 virtual machine
- pinging the other virtual machine:
  - ![ping screenshot](./Task1Screenshots/Step2NetworkConnectionTest.png)
## step 3: finding the volners that could be exploited:
- we did it through a command that output the script of the volnerabilities on ports number 21, 22, and 80.
    - ![Image Capture](Task1Screenshots/Step3FindingTheExploits.png)
## step 4: running the mfsconsole command then search for the possible vuners inside vsftpd and finally choose the vulnerability with excelant rank.
- first we run the mfsconsole command then we searched for the vulners command then we used the vulnaribility with the excelant rank.
  - ![Image Capture](Task1Screenshots/Step4UsingMetasploitOnKaliAndSearchingForTheVulnerability.png)
## step 5: configure the mfconsole with the metasploitable 2 attributes and run the attack
- setting the right host to be the metasploitable 2 ip, and we set the right port to be 24. then we run the code to start the exploitation
  - ![Image Capture](Task1Screenshots/Step5ExploitRunningSteps.png)
## step 6: writting commands on Metasploitable 2 to show the attacker ability on interacting with the compromised victim machine
-  on this step we tried some commands on the victim machine:
    1. whoami command which indicate that the attacker have root privliges.
    2. uname -a command which indicate that the attacker can gather the system information.
    3. cat /etc/shadow command which indicate that the attacker can attempt to read files.
   - ![Image Capture](./Task1Screenshots/Step6RunningCommandsOnVictimShell.png)

