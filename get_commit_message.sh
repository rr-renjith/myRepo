#!/bin/bash

export COMMIT_INFO_MESSAGE=$(node -pe 'JSON.parse(process.argv[1]).builds.find(i => i.repository.name === "test_travis").commit.message' "$(curl -s \
-H "Travis-API-Version: 3" \
-H "User-Agent: API Explorer" \
-H "Authorization: token MTDTD5ilUbB5_1jGnM3yFA" \
  https://api.travis-ci.com/owner/rr-renjith/active)")
