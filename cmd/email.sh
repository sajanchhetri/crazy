#!/bin/bash
cd
rm -rf mosint
rm -rf .mosint.yaml
apt install git -y && apt install golang -y
git clone https://github.com/alpkeskin/mosint
cd mosint
go install -v github.com/alpkeskin/mosint/v3/cmd/mosint@latest
cp example-config.yaml ~/.mosint.yaml
cd v3/cmd/mosint
read -p "enter email to trace" email
go run main.go $email