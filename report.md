| Feature                    | Ubuntu                          | CentOS (Stream)                | Fedora                          |
|----------------------------|----------------------------------|--------------------------------|----------------------------------|
| **Base**                   | Debian                          | Red Hat Enterprise Linux (RHEL) | Red Hat (upstream to RHEL)      |
| **Init System**            | systemd                         | systemd                         | systemd                         |
| **Default Shell**          | Bash                            | Bash                            | Bash                            |
| **Package Manager**        | APT (dpkg)                      | YUM/DNF (RPM)                   | DNF (RPM)                       |
| **Update Method**          | `apt update && apt upgrade`     | `dnf update` or `yum update`    | `dnf upgrade`                   |
| **Release Cycle**          | Regular LTS (every 2 years)     | Rolling (CentOS Stream)         | 6-month rolling releases        |
| **Target Audience**        | Desktop & Server                | Enterprise/server environments  | Developers & early adopters     |
| **Default Desktop Env.**   | GNOME (customized)              | None (minimal install)          | GNOME (upstream experience)     |
| **Support Duration**       | LTS: 5 years (optional 10)      | Stream: short-term before RHEL  | ~13 months                      |
| **Container Support**      | Strong (Snap, Docker)           | Strong (Podman, Docker)         | Cutting-edge (Podman, Docker)   |
| **Security Tools**         | AppArmor, UFW                   | SELinux, firewalld              | SELinux, firewalld              |
| **Community vs. Enterprise**| Community with Canonical support| RHEL-focused community stream   | Community-driven, Red Hat backed|

