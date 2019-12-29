import java.lang.Math;
public class FirstDuplicate {
    public static void main(String[] args) {
        // Integer[] array = { 8,4,6,2,6,4,7,9,5,8 };
        Integer[] array = { 5, 5, 5, 5, 5 };
        Integer result = iterate(array);
        System.out.println(result != null ? result : -1);
    }

    public static Integer iterate(Integer[] array) {
        for (Integer n : array) {
            multiply(array, n);
            if (greaterThanZero(array, n)) return n;
        }
        return 0;
    }

    public static void multiply(Integer[] array, Integer idx) {
        array[absolute(idx) - 1] *= -1;
    }

    public static Boolean greaterThanZero(Integer[] array, Integer idx) {
        return array[absolute(idx) - 1] > 0;
    }

    public static Integer absolute(Integer num) {
        return Math.abs(num);
    }
}
