#!/bin/bash

# Create all 11 scripts

echo -e "#!/bin/bash\nalias ls='rm *'" > 0-alias
echo -e "#!/bin/bash\necho \"hello \$USER\"" > 1-hello_you
echo -e "#!/bin/bash\nexport PATH=\"\$PATH:/action\"" > 2-path
echo -e "#!/bin/bash\necho \"\$PATH\" | tr ':' '\n' | wc -l" > 3-paths
echo -e "#!/bin/bash\nprintenv" > 4-global_variables
echo -e "#!/bin/bash\ndeclare -p" > 5-local_variables
echo -e "#!/bin/bash\nBEST=\"School\"" > 6-create_local_variable
echo -e "#!/bin/bash\nexport BEST=\"School\"" > 7-create_global_variable
echo -e "#!/bin/bash\necho \$((TRUEKNOWLEDGE + 128))" > 8-true_knowledge
echo -e "#!/bin/bash\necho \$((POWER / DIVIDE))" > 9-divide_and_rule
echo -e "#!/bin/bash\necho \$((BREATH ** LOVE))" > 10-love_exponent_breath

# Make all scripts executable
chmod +x {0..10}-*

echo "All 11 scripts have been created and are executable!"
