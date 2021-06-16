#!/bin/bash
echo "test1"
echo "::step::Running child step 1"
echo "test2"
echo -n "I was triggered by the postcreate" >> ./child1.txt
sleep 30s
echo "::step::Step 2"
echo -n "I was triggered by the postcreate" >> ./child2.txt
sleep 30s
echo "test3"
echo "::endstep::"
echo "test4"
echo -n "I was triggered by the postcreate" >> ./childEndStep.txt
sleep 30s
echo -n "test2"
echo "::step::3rd step"
echo -n "test2"
echo -n "I was triggered by the postcreate" >> ./child3.txt
sleep 30s