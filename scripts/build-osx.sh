#!/usr/bin/env bash

echo "hi"

which native-image

#set -ex

#version=`cat VERSION`

#./mvnw jar:jar install:install -DgroupId=org.bouncycastle -DartifactId=bcprov-jdk15on -Dversion=1.62

#native-image -cp ${PWD}/target/titan-$version-jar-with-dependencies.jar\
#    -H:Name=titan\
#    -H:Class=io.titandata.titan.Cli\
#    -H:+ReportUnsupportedElementsAtRuntime\
#    -H:ReflectionConfigurationFiles=${PWD}/config/reflect-config.json\
#    -H:ResourceConfigurationFiles=${PWD}/config/resource-config.json\
#    -H:+AddAllCharsets\
#    --initialize-at-run-time=org.bouncycastle.crypto.prng.SP800SecureRandom\
#    --initialize-at-run-time=org.bouncycastle.jcajce.provider.drbg.DRBG$Default\
#    --initialize-at-run-time=org.bouncycastle.jcajce.provider.drbg.DRBG$NonceAndIV\
#    -J-Djava.security.properties=${PWD}/java.security.overrides\
#    --allow-incomplete-classpath\
#    --enable-http\
#    --enable-https

#mkdir -p ${PWD}/releases/${version}
#zip ${PWD}/releases/${version}/titan-cli-$version-darwin_amd64.zip titan