package pets;

import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

public class ManagementTest {


    @Test
    void testAll(){
        Runner.path("classpath:pets").parallel(1);
    }
}
