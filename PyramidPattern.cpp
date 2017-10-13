// Print pattern pyramid wise
/* sample input : 5
   sample output:	
   1
   22
   333
   4444
   55555
   4444
   333
   22
   1
   
   Time Complexity : O(n^2)
*/
#include<bits/stdc++.h>

using namespace std;

void PrintPattern(int num){
	// upper part of patern
	for(int i=1;i<=num;i++){
		for(int j=1;j<=i;j++){
			cout<<i<<" ";  // printing number pattern till 5 row
		}
		cout<<endl;
	}
	//lower part of pattern
	for(int i = num-1; i>0; i--){
		for(int j = i; j>0 ; j--){
			cout<<i<<" ";
		}
		cout<<endl;
	}
}
// Driver code
int main(){
	int num;
	cin>>num;
	PrintPattern(num);
	return 0;
}
