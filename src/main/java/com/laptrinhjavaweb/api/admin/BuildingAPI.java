package com.laptrinhjavaweb.api.admin;

import com.laptrinhjavaweb.dto.BuildingDTO;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController(value="buildingAPIOfAdmin")
public class BuildingAPI {
    @PostMapping("/api/building")
    public BuildingDTO createBuilding(@RequestBody BuildingDTO newBuilding){
        return newBuilding;
    }
}
