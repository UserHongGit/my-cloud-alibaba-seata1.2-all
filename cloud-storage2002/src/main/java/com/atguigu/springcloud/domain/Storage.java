package com.atguigu.springcloud.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Storage {
    private Long id;

    private Long productId;

    private Integer total;

    private Integer used;

    private Integer residue;

}
