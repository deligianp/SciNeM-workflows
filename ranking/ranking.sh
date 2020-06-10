#!/bin/bash
cd "$(dirname "$0")"

config="$1"

# if ! ../run -c "$config"; then
#         echo "Error: Association Mining"
#         exit 1
# fi
if ! spark-submit --packages graphframes:graphframes:0.8.0-spark3.0-s_2.12 hminer.py "$config"; then
        echo "Error: Association Mining"
        exit 1
fi

# if ! python3 pagerank.py -c "$config"; then
#         echo "Error: Ranking"
#         exit 2
# fi

#if ! python3 ../add_names.py -c "$config"; then 
#        echo "Error: Finding node names"
#        exit 3
#fi
