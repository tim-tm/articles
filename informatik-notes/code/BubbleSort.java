import java.util.Arrays;

public class BubbleSort {
    public static void main(String[] args) {
        int[] ints = {3,4,2,1};
        for (int i = 0; i < ints.length; i++) {
            for (int j = i+1; j < ints.length; j++) {
                if (ints[j] < ints[i]) {
                    int tmp = ints[j];
                    ints[j] = ints[i];
                    ints[i] = tmp;
                }
            }
        }
        System.err.println(Arrays.toString(ints));
    }
}
