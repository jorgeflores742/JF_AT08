package org.gradle.sample;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;

public class GreeterTest {
    private Greeter greeter;

    @Before
    public void setUp() throws Exception {
        greeter = new Greeter();
    }

    @Test
    public void test1() throws Exception {
        assertEquals("hello Gradle", greeter.getGreeting());
    }

    @Test
    public void test2() throws Exception {
        assertNotEquals(null, greeter.getGreeting());
    }

    @Test
    public void test3() throws Exception {
        assertNotEquals(" ", greeter.getGreeting());
    }

    @Test
    public void test4() throws Exception {
        assertNotEquals(100, greeter.getGreeting());
    }

    @Test
    public void test5() throws Exception {
        assertNotEquals(true, greeter.getGreeting());
    }

    @Test
    public void test6() throws Exception {
        assertNotEquals(false, greeter.getGreeting());
    }

    @Test
    public void test7() throws Exception {
        assertNotEquals(" ", greeter.getGreeting());
    }

    @Test
    public void test9() throws Exception {
        assertNotEquals(-69, greeter.getGreeting());
    }

    @Test
    public void test10() throws Exception {
        assertNotEquals(0.07, greeter.getGreeting());
    }

    @Test
    public void test11() throws Exception {
        assertNotEquals("#", greeter.getGreeting());
    }
}
