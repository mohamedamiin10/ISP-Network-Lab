# ISP Network Lab (EVE-NG)

## Project Overview
This project is an ISP network simulation built using EVE-NG.  
It demonstrates the design, configuration, and verification of a multi-layer ISP infrastructure including routing, customer connectivity, and service provider backbone operations.

The lab simulates real-world ISP scenarios such as backbone routing, customer edge integration, and end-to-end connectivity testing.

---

## Network Design

The topology includes:

- ISP backbone routers
- Access and aggregation layer
- Customer Edge (CPE) routers using MikroTik
- End-to-end connectivity between customer networks and ISP backbone

The design follows a hierarchical ISP architecture to simulate real production environments.

---

## Technologies Used

- EVE-NG (Network Emulator)
- Cisco IOS Routers
- MikroTik RouterOS (CPE devices)
- IP Subnetting and VLAN Design
- OSPF (Internal ISP Routing)
- BGP (External ISP Connectivity)
- NAT/PAT (Customer Internet Access)
- ICMP (Connectivity Testing)

---

## 📁 Project Structure
isp-network-lab/
│
├── lab/
│ └── full isp.unl
│
├── screenshots/
│ ├── topology
│ ├── routing verification
│ ├── ping tests
│ ├── BGP summary
│
├── cpesbackups/
│ ├── MikroTik router backups
│
└── README.md
