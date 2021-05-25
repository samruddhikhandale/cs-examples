#!/bin/bash

echo "::step::Writing /postcreated.txt"
echo -n "I was triggered by the postcreate" >> ./postcreated.txt
echo "::step::Prinitng test"
echo -n "I was triggered by the postcreate" >> ./postcreatedtextpritn.txt
echo "::step::Installing tools"

if [ ! -f ConfigSteps/cifs-utils ]; then
  sudo apt install -y cifs-utils \
      && touch ConfigSteps/cifs-utils
else
  echo "::step::cifs-utils already installed"
fi

echo "::endstep::"

if [ ! -f ConfigSteps/dotnet-3.1.408 ]; then
  # Install .NET Core SDK
  sudo curl -SL https://dotnetcli.blob.core.windows.net/dotnet/Sdk/3.1.408/dotnet-sdk-3.1.408-linux-x64.tar.gz --output dotnet.tar.gz \
      && sudo tar -zxf dotnet.tar.gz -C /home/codespace/.dotnet --skip-old-files \
      && sudo rm dotnet.tar.gz \
      && touch ConfigSteps/dotnet-3.1.408
else
  echo "dotnet 3.1.408 already installed"
fi

if [ ! -f ConfigSteps/dotnet-5.0.202 ]; then
  # Install .NET Core SDK
  sudo curl -SL https://dotnetcli.blob.core.windows.net/dotnet/Sdk/5.0.202/dotnet-sdk-5.0.202-linux-x64.tar.gz --output dotnet.tar.gz \
      && sudo tar -zxf dotnet.tar.gz -C /home/codespace/.dotnet --skip-old-files \
      && sudo rm dotnet.tar.gz \
      && touch ConfigSteps/dotnet-5.0.202
else
  echo "dotnet 5.0.202 already installed"
fi
sleep 1m
echo "::step::Ending script execution"
echo -n "I was triggered by the postcreate" >> ./postcreated1.txt
echo -n "I was triggered by the postcreate" >> ./postcreated2.txt
echo -n "I was triggered by the postcreate" >> ./postcreated3.txt