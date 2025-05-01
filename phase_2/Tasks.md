# Phase 2

In this task, we used Splunk Enterprise installed on the host (Mac) as a SIEM to collect and analyze logs from both the victim (Metasploitable2) and attacker (Kali Linux) machines. The goal is to visualize the attack pattern and assess its impact using real log data.

---

## Step 1: Check logs on the victim machine (Metasploitable 2)
We located and reviewed the FTP log file (`/var/log/vsftpd.log`) after performing the vsftpd 2.3.4 backdoor attack from the Kali Linux machine.
- **Log review screenshot**:
  - [Checking victim logs](./Phase2Screenshots/Step1CheckingVictimLogs.png)

## Step 2: Send the logs to the host machine (Mac)
Since Metasploitable 2 is a lightweight system without a forwarder, we used a direct transfer method over the local network to send the `vsftpd.log` file to the Mac.
- **Screenshot of file transfer**:
  - [Sending logs over the network](./Phase2Screenshots/Step2SendingLogsOnNetwork.png)

## Step 3: Import logs into Splunk (host SIEM)

### Victim logs:
We imported the extracted `vsftpd.log` file from the victim machine into Splunk and selected the appropriate settings:
- **Source type:** `ftp`
- **Host name:** Set as the name of the victim machine
- **Screenshot**:
  - [Importing victim logs](./Phase2Screenshots/Step3ImportingVictimLog.png)

### Attacker logs:
We collected logs from the Kali machine (e.g., `~/.msf4/logs`, terminal history, or custom logging of the exploit) and imported them into Splunk as well.
- **Screenshot**:
  - [Importing attacker logs](./Phase2Screenshots/Step3ImportingAttackerLogs.png)

## Step 4: Visualize the attack patterns using Splunk dashboards

We visualized logs using Splunk search and filtering capabilities to analyze the behavior of both machines during the exploit.

### Attacker log insights:
We visualized connection attempts and exploit triggers from the Kali machine.
- **Screenshots**:
  - [Attacker logs visualization 1](./Phase2Screenshots/Step4VisualizingAttackerLogs.png)
  - [Attacker logs visualization 2](./Phase2Screenshots/Step4VisualizingAttackerLogs2.png)

### Victim log insights:
The logs from `vsftpd.log` clearly showed multiple connection attempts from the attacker's IP (192.168.3.20).
- **Screenshot**:
  - [Victim logs visualization](./Phase2Screenshots/Step4VisualizingVictimLogs.png)

## Step 5: Analyze and compare logs between attacker and victim

Finally, we correlated the timestamps and IP addresses to visualize how the attack from Kali (attacker) impacted Metasploitable2 (victim).
- **Screenshot**:
  - [Attacker and victim log comparison](./Phase2Screenshots/Step5AttackerVictimLogComparison.png)

---

> - Logs collected from both attacker and victim
> - Imported into Splunk SIEM
> - Visualized clearly using Splunk dashboards
> - Compared and analyzed to understand the attack flow

