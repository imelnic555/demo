package org.endava;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingController {

    @GetMapping("hello")
    public String sayHello() {
        return "hello";
    }

    @PostMapping("/baeldung")
    public String sayHelloPost() {
        return "hello";
    }
}

