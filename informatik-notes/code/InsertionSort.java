import java.util.Arrays;

public class InsertionSort {
    public static void main(String[] args) {
        int[] ints = {3,4,2,1};
        for (int i = 1; i < ints.length; i++) {
            int key = ints[i];
            int j = i-1;
            while (j >= 0 && ints[j] > key) {
                ints[j+1] = ints[j];
                j--;
            }
            ints[j+1] = key;
        }
        System.err.println(Arrays.toString(ints));
    }
}
