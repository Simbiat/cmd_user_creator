@echo off
for /f %%A in (\\path\userlist.txt) DO (
  Echo Creating %%A...
  NET USER %%A Citibank01 /ADD /active:YES /expires:"never"
  Echo Adding %%A to Remote Desktop Users...
  NET LOCALGROUP "Remote Desktop Users" %%A /add
)
pause
exit
