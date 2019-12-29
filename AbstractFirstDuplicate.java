import java.lang.Math;

public class AbstractFirstDuplicate {
    public static void main(String[] args) {
        Integer[] array = { 8,4,6,2,6,4,7,9,5,8 };
        // Integer[] array = { 1,1,2,2,4 };
        // Integer[] array = { 1,2,3,4,5,6 };
        Integer result = iterate(array);
        System.out.println(result != null ? result : -1);
        
        // array = { 5,5,5,5,5 };
        // result = iterate(array);
        // System.out.println(result != null ? result : -1);
        
        // array = {  };
        // result = iterate(array);
        // System.out.println(result != null ? result : -1);
        
        // array = { 8,4,6,2,6,4,7,9,5,8 };
        // result = iterate(array);
        // System.out.println(result != null ? result : -1);
        
        // array = { 8,4,6,2,6,4,7,9,5,8 };
        // result = iterate(array);
        // System.out.println(result != null ? result : -1);
        
        // array = { 8,4,6,2,6,4,7,9,5,8 };
        // result = iterate(array);
        // System.out.println(result != null ? result : -1);
        
        // array = { 8,4,6,2,6,4,7,9,5,8 };
        // result = iterate(array);
        // System.out.println(result != null ? result : -1);
        
        // array = { 8,4,6,2,6,4,7,9,5,8 };
        // result = iterate(array);
        // System.out.println(result != null ? result : -1);
        
        // array = { 8,4,6,2,6,4,7,9,5,8 };
        // result = iterate(array);
        // System.out.println(result != null ? result : -1);
    }

    public static Integer iterate(Integer[] array) {
        for (Integer n : array) {
            Integer res = callback(array, n);
            if (res != null) return res;
        }
        return null;
    }

    public static Integer callback(Integer[] array, Integer n) {
        multiply(array, n);
        return compare(array, n) ? n : null;
    }

    public static void multiply(Integer[] array, Integer idx) {
        array[absolute(idx) - 1] *= -1;
    }

    public static Boolean compare(Integer[] array, Integer idx) {
        return array[absolute(idx) - 1] > 0;
    }

    public static Integer absolute(Integer num) {
        return Math.abs(num);
    }
}
