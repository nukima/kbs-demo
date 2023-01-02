package ptit.edu.kbsdemo.controller.v1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ptit.edu.kbsdemo.model.CaseRequest;
import ptit.edu.kbsdemo.model.SolutionResponse;
import ptit.edu.kbsdemo.service.KbsService;

@RestController
@RequestMapping("/api/v1/kbs")
public class KbsController {
    @Autowired
    private KbsService kbsService;

    @GetMapping("/solution")
    public SolutionResponse getSolution(CaseRequest caseRequest) {
        return kbsService.getSolution(caseRequest);
    }
}
