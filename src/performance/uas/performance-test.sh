killall sipp
rm *.log
export TEST_IP=127.0.0.1
echo "IP Address for the test is $TEST_IP"

echo "Attempting to start sipp script";	    		
sipp $TEST_IP:5080 -sf performance-uac.xml -trace_err -i $TEST_IP -p 5055 -r 50 -m 3000
#sipp $TEST_IP:5080 -sf performance-uac.xml -trace_err -i $TEST_IP -p 5055 -r 500 -m 1000

