/* Question - Find the maximum Length of the palindrone string possible from the given small case charecter string
input - string = "abbsbbcddca"
output = 8
time complexity - O(n)
*/
#include<bits/stdc++.h>
using namespace std;

int MaxLengthPalindrone(string str){
	int farr[26]={0};			//frequency array
	int sum=0,temp=0;
	for(int i=0;i<str.length();i++){
		int num = int(str[i])-int('a');
		farr[num]+=1;
	}
	for(int i=0;i<26;i++){			//Includeing all characters with even number of occurance
		if(farr[i]%2==0){			
			sum = sum+farr[i];
		}
		else if(farr[i]>temp){		//Including Charecter with max odd number of occurance 	
			temp=farr[i];
		}
	}
	sum=sum+temp;		// calculating the final length of the strng
	return sum;
}

int main(){
	string str="abbace";
	cout<<MaxLengthPalindrone(str);
	return 0;
}
