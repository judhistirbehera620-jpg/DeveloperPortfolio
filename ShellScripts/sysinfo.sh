#!/bin/bash

echo "===================================="
echo "       SYSTEM INFORMATION REPORT"
echo "===================================="

echo "Student: Judhistir Behera"
echo "Roll Number: 2601730433"
echo "Date: $(date)"

echo ""
echo "========== CPU INFORMATION =========="
lscpu | grep -E 'Model name|^CPU\(s\):' | head -2

echo ""
echo "========== MEMORY INFORMATION =========="
free -h

echo ""
echo "========== TOP 3 PROCESSES =========="
ps -eo pid,comm,%cpu --sort=-%cpu | head -4

echo ""
echo "System report generated successfully!"
