import java.util.Scanner;

class Main{
    public static void main(String[] args) {
        // int arr[] = {1,2,1,3,4,5};
        // int arr[] = {1,2,3,4,3,2,1};
        // int arr[] = {1,2,3,2,4,3,6,6,7,6};
        // int arr[] = {10,20,30,40,30,20,10};
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        // int n = arr.length;
        int arr[] = new int[n];
        for(int i=0;i<n;i++){
            arr[i] = sc.nextInt();
        }
        int newArr[] = new int[n];
        // System.out.print(n);
        int sum =0, currNPos = Integer.MIN_VALUE;
        
        for(int i =0;i<n;i++){

            if(arr[i] > currNPos){
                currNPos = arr[i];
            }else{
                 newArr[i] =currNPos - arr[i];
                sum += newArr[i];
            }
            sum +=arr[i];
        }

        for(int i =0;i<n;i++){
            System.out.print(newArr[i]+" ");
        }

        System.out.println("");
        System.out.println(sum);

    }
}