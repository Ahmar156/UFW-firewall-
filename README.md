# Basic Firewall Configuration with UFW

## Objective

The objective of this task is to configure a basic firewall
on Linux using UFW and create rules to allow and deny network
traffic.

## Tools

- Ubuntu Linux
- UFW (Uncomplicated Firewall)
- Virtual Machine for testing

## What is a Firewall?

A firewall controls network traffic entering and leaving a
computer. It can allow trusted traffic and block unwanted
traffic according to configured rules.

## UFW

UFW stands for Uncomplicated Firewall. It is a simple
command-line firewall management tool available on Ubuntu.

## Firewall Rules

| Rule | Action | Purpose |
|---|---|---|
| SSH - Port 22 | ALLOW | Allows SSH connections |
| HTTP - Port 80 | DENY | Blocks HTTP traffic |
| HTTPS - Port 443 | ALLOW | Allows HTTPS traffic |
| 192.168.1.200 | DENY | Blocks traffic from a specific IP |

## Default Policies

Incoming traffic is denied by default.

Outgoing traffic is allowed by default.

This provides a basic security configuration in which
incoming services must be explicitly allowed.

## Verification

The command below was used to verify the active firewall
rules:

    sudo ufw status verbose

## Testing

Testing limitation: Connectivity between the VirtualBox Ubuntu VM and the WSL environment was tested. ICMP connectivity was successful, but TCP port 80 could not be reached even when UFW was temporarily disabled. Therefore, the TCP test could not be used to isolate the UFW rule. The active UFW configuration was verified using sudo ufw status verbose.

A separate Ubuntu virtual machine was used as the testing
machine. Network connectivity and firewall behavior were
tested from the separate machine.

## Script

The `ufw_configuration.sh` script automatically configures
the default policies and required firewall rules.

## References

Ubuntu UFW Documentation:
https://help.ubuntu.com/community/UFW
