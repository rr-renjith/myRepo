#!/bin/bash

export COMMIT_INFO_MESSAGE=$(node -pe 'JSON.parse(process.argv[1]).commit.message.match(/(?<=commit\s\w+\s).*/g)[0]' "$(curl -s \
-H "Travis-API-Version: 3" \
-H "User-Agent: API Explorer" \
-H "Authorization: token MTDTD5ilUbB5_1jGnM3yFA" \
https://api.travis-ci.com/build/${TRAVIS_BUILD_ID})")

export PARENT_BUILD=$(node -pe 'JSON.parse(process.argv[1]).commit.message.match(/(?<=\/)[^\s]+(?=\scommit)/g)[0]' "$(curl -s \
-H "Travis-API-Version: 3" \
-H "User-Agent: API Explorer" \
-H "Authorization: token MTDTD5ilUbB5_1jGnM3yFA" \
https://api.travis-ci.com/build/${TRAVIS_BUILD_ID})")
