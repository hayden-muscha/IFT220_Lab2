# brutforce script to make some organizational units

# you need to change "DC=my,DC=hmuscha,DC=edu" to match your domain and update the ST initials to match or remove them

Write-Host -ForegroundColor yellow "Creating OUs"
New-myOrganizationalUnit -Name eduputers -Path "DC=my,DC=hmuscha,DC=edu" -Description "eduputers"
 New-myOrganizationalUnit -Name Workstations -Path "OU=eduputers,DC=my,DC=hmuscha,DC=edu"
  New-myOrganizationalUnit -Name President -Path "OU=Workstations,OU=eduputers,DC=my,DC=hmuscha,DC=edu"
  New-myOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=eduputers,DC=my,DC=hmuscha,DC=edu"
  New-myOrganizationalUnit -Name HR -Path "OU=Workstations,OU=eduputers,DC=my,DC=hmuscha,DC=edu"
  New-myOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=eduputers,DC=my,DC=hmuscha,DC=edu"
  New-myOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=eduputers,DC=my,DC=hmuscha,DC=edu"
  New-myOrganizationalUnit -Name IT -Path "OU=Workstations,OU=eduputers,DC=my,DC=hmuscha,DC=edu"
 New-myOrganizationalUnit -Name Servers -Path "OU=eduputers,DC=my,DC=hmuscha,DC=edu"
  New-myOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=eduputers,DC=my,DC=hmuscha,DC=edu"
  New-myOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=eduputers,DC=my,DC=hmuscha,DC=edu"
New-myOrganizationalUnit -Name Groups -Path "DC=my,DC=hmuscha,DC=edu" -Description "High Level Security Groups"
New-myOrganizationalUnit -Name Privileged_Accounts -Path "DC=my,DC=hmuscha,DC=edu" -Description "Privileged Accounts"
New-myOrganizationalUnit -Name Users -Path "DC=my,DC=hmuscha,DC=edu" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-myGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=Groups,DC=my,DC=hmuscha,DC=edu"
New-myGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=Groups,DC=my,DC=hmuscha,DC=edu"
New-myGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=Groups,DC=my,DC=hmuscha,DC=edu"
New-myGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=Groups,DC=my,DC=hmuscha,DC=edu"
New-myGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=Groups,DC=my,DC=hmuscha,DC=edu"
New-myGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=Groups,DC=my,DC=hmuscha,DC=edu"
# Create a Lemyership group for the President and VPs to access restricted a file share
New-myGroup -GroupCategory Security -GroupScope Global -Name Lemyership -Path "OU=Groups,DC=my,DC=hmuscha,DC=edu"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
