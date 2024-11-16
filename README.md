# MVG Observatory
![MVG Observatory - Compressor](https://healthchecks.io/b/2/29812d9e-1e3d-46f7-acd1-0a99070f410a.svg)
![MVG Observatory - Compressor S-Bahn](https://healthchecks.io/b/2/02845c28-fe1e-4992-b666-da47203292d3.svg)
![MVG Observatory - Compressor Messages MVG](https://healthchecks.io/b/2/eddccfba-1e12-461f-ab6b-a2abc949f9a5.svg)
![MVG Observatory - Compressor Messages S-Bahn](https://healthchecks.io/b/2/e8dd9450-6d5b-4484-bc98-8425640b9eea.svg)


## Runbook
Install Compressor Components
```
ansible-playbook -i inventory.yaml --ask-vault-pass play-compressor.yaml --check --diff
```

Install Scraper Components
```
ansible-playbook -i inventory.yaml --ask-vault-pass play-scraper.yaml --check --diff
```