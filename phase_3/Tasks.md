# Phase 3 documentation

In this phase, we implemented a defensive strategy to mitigate the `vsftpd_2.3.4` backdoor vulnerability on Metasploitable 2. This vulnerability allowed attackers to gain root access via a hidden backdoor on port 6200. Our defense focused on removing the vulnerable binary and blocking the FTP port (21) to completely shut down the exploit path.

---

## Step 1: Delete the vulnerable `vsftpd` binary

We located the `vsftpd` binary using the `which` command and removed it to prevent any further exploitation of the backdoor.

- **Screenshot**:  
  ![Step1Deletingvsftpd](./phase_3/Phase3Screenshots/Step1Deletingvsftpd.png)

---

## Step 2: Block port 21 using `iptables`

To prevent any new connections to the FTP service, we blocked incoming traffic on port 21 using the `iptables` firewall.

- **Screenshot**:  
  ![Step2BlockFTPPort21](./phase_3/Phase3Screenshots/Step2BlockFTPPort21.png)

---

## Step 3: Validate the defense (before vs after)

We tested the defense by running the original attack script both before and after applying the defensive measures.

### Before defense:

The exploit succeeded, giving the attacker a root shell through the backdoor on port 6200.

- **Screenshot**:  
  ![Step3BeforeDefense](./phase_3/Phase3Screenshots/Step3BeforeDefense.png)

### After defense:

The exploit failed to connect to the FTP service and was unable to spawn a shell.

- **Screenshot**:  
  ![Step3RerunningAttackFails](./phase_3/Phase3Screenshots/Step3RerunningAttackFails.png)

---

> ✅ This completes the Phase 3 requirements:
>
> - The vulnerable service was removed
> - Firewall rules were applied to block the attack vector
> - The exploit was re-tested and confirmed to fail
> - Clear before-and-after comparison provided
