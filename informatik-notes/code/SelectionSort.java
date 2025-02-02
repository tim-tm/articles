import java.util.Arrays;

public class SelectionSort {
    public static void main(String[] args) {
        int[] ints = {3,4,2,1};
        for (int i = 0; i < ints.length; i++) {
            int min = i;
            for (int j = i+1; j < ints.length; j++) {
                if (ints[j] < ints[min]) {
                    min = j;
                }
            }
            int tmp = ints[i];
            ints[i] = ints[min];
            ints[min] = tmp;
        }
        System.out.println(Arrays.toString(ints));
    }
}
