# Zone Transfer Script

This script performs a DNS zone transfer test on a specified domain. It queries for the domain's nameservers and attempts a zone transfer to retrieve a list of IP addresses associated with the domain. Zone transfers are often restricted for security reasons, but if allowed, this script will display available DNS records for the target domain.

## Features

- **Nameserver Query**: Finds the nameservers for the specified domain.
- **Zone Transfer Attempt**: Tries a zone transfer on each nameserver to gather associated IP addresses.
- **Result Filtering**: Displays only records with IP addresses to reduce clutter.

## Prerequisites

- **host**: The script uses `host` to query nameservers and attempt the zone transfer. Install `dnsutils` on Debian-based systems if it’s not available.

## Usage

Run the script with the target domain as an argument:

```bash
./zone_transfer.sh <domain>
```

## Notes

- **Permission**: Ensure you have authorization to perform a zone transfer on the target domain, as it’s generally restricted to prevent unauthorized access.
- **Reliability**: Many domains have zone transfers disabled for security reasons, so successful transfers may be rare.

## Author

Written by tyto.
