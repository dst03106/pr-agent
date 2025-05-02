#!/bin/bash
python /app/pr_agent/servers/github_action_runner.py

if [ $? -ne 0 ]; then
     echo "::error title=PR Agent action step::Set CONFIG__MODEL when not using OpenAI model."
     exit 1
 fi
