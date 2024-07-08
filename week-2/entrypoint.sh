#!/bin/bash
ollama start &
sleep 10
ollama pull gemma:2b
tail -f /dev/null
