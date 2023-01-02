package ptit.edu.kbsdemo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/ping")
public class PingController {
    @RequestMapping("")
    public String getPing() {
        return "pong";
    }
}
