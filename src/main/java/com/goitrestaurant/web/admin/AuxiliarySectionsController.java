package com.goitrestaurant.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AuxiliarySectionsController {

    @RequestMapping(value = "/admin/auxiliarySections", method = RequestMethod.GET)
    public String showAllCategories(Model model) {
        return "/admin/auxiliarySections/show";
    }

}
