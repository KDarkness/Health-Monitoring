#!/bin/bash
# Health Monitoring Script
# Date and Time
echo "Date and Time: $(date)"
# System Uptime
echo "System Uptime:"
uptime
# CPU Usage
echo "CPU Usage:"
mpstat
# Memory Usage
echo "Memory Usage:"
free -m
# Disk Usage
echo "Disk Usage:"
df -h
# Network Statistics
echo "Network Statistics:"
netstat -i
# Save the report
report_file="health_report_$(hostname).txt"
echo "Saving report to $report_file"
{
  echo "Date and Time: $(date)"
  echo "System Uptime:" && uptime
  echo "CPU Usage:" && mpstat
  echo "Memory Usage:" && free -m
  echo "Disk Usage:" && df -h
  echo "Network Statistics:" && netstat -i
} > "$report_file"
