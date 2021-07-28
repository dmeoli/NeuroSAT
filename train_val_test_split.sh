PROBLEM_TYPE="${1:-uniform-random-3-sat}"

rm -rf data/"$PROBLEM_TYPE"/train
rm -rf data/"$PROBLEM_TYPE"/val
rm -rf data/"$PROBLEM_TYPE"/test

splitfolders --output data/"$PROBLEM_TYPE" \
  --ratio 0.8 0.1 0.1 \
  --seed 123456 \
  -- data/"$PROBLEM_TYPE"
