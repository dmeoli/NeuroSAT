PROBLEM_TYPE="${1:-uniform-random-3-sat}"

rm -rf data/"$PROBLEM_TYPE"/train
rm -rf data/"$PROBLEM_TYPE"/val
rm -rf data/"$PROBLEM_TYPE"/test

splitfolders --output data/"$PROBLEM_TYPE" \
  --ratio 0.8 0.1 0.1 \
  --seed 123456 \
  -- data/"$PROBLEM_TYPE"

if [ "$PROBLEM_TYPE" = "uniform-random-3-sat" ]; then

  rm -r data/"$PROBLEM_TYPE"/train/uf250-1065
  rm -r data/"$PROBLEM_TYPE"/val/uf250-1065
  rm -r data/"$PROBLEM_TYPE"/test/uf250-1065

  rm -r data/"$PROBLEM_TYPE"/train/uuf250-1065
  rm -r data/"$PROBLEM_TYPE"/val/uuf250-1065
  rm -r data/"$PROBLEM_TYPE"/test/uuf250-1065
  
elif [ "$PROBLEM_TYPE" = "graph-coloring" ]; then

  rm -r data/"$PROBLEM_TYPE"/train/flat30-60
  rm -r data/"$PROBLEM_TYPE"/train/flat75-180
  rm -r data/"$PROBLEM_TYPE"/train/flat100-239
  rm -r data/"$PROBLEM_TYPE"/train/flat125-301
  rm -r data/"$PROBLEM_TYPE"/train/flat150-360
  rm -r data/"$PROBLEM_TYPE"/train/flat175-417
  rm -r data/"$PROBLEM_TYPE"/train/flat200-479
  
  rm -r data/"$PROBLEM_TYPE"/val/flat30-60
  rm -r data/"$PROBLEM_TYPE"/val/flat75-180
  rm -r data/"$PROBLEM_TYPE"/val/flat100-239
  rm -r data/"$PROBLEM_TYPE"/val/flat125-301
  rm -r data/"$PROBLEM_TYPE"/val/flat150-360
  rm -r data/"$PROBLEM_TYPE"/val/flat175-417
  rm -r data/"$PROBLEM_TYPE"/val/flat200-479
  
  rm -r data/"$PROBLEM_TYPE"/test/flat30-60
  rm -r data/"$PROBLEM_TYPE"/test/flat75-180
  rm -r data/"$PROBLEM_TYPE"/test/flat100-239
  rm -r data/"$PROBLEM_TYPE"/test/flat125-301
  rm -r data/"$PROBLEM_TYPE"/test/flat150-360
  rm -r data/"$PROBLEM_TYPE"/test/flat175-417
  rm -r data/"$PROBLEM_TYPE"/test/flat200-479
  
fi
