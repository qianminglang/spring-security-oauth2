import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * ClassName Test
 *
 * @author qml
 * Date 2020/9/6 0006 18:44
 * Version 1.0
 **/

public class Test {
    public static void main(String[] args) {
        System.out.println(new BCryptPasswordEncoder().encode("secret"));
    }
}