/*
 * Copyright 2019 NUROX Ltd.
 *
 * Licensed under the NUROX Ltd Software License (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.looseboxes.com/legal/licenses/software.html
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.bc.elmi.pu.enums;

import com.bc.elmi.pu.entities.Userstatus;

/**
 * @author Chinomso Bassey Ikwuagwu on May 12, 2019 12:50:56 PM
 */
public enum UserstatusEnum implements DatabaseEnum<Userstatus>{
    
    Uactivate(1),
    Activated(2),
    Deactivated(3);
    
    private final Short id;
    private final String value;
    
    private UserstatusEnum(int id) {
        this(id, null);
    }
    
    private UserstatusEnum(int id, String value) {
        this.id = (short)id;
        this.value = value == null ? this.name() : value;
    }

    @Override
    public Short getId() {
        return id;
    }

    @Override
    public String getValue() {
        return value;
    }

    @Override
    public Userstatus getEntity() {
        return new Userstatus(id);
    }

    @Override
    public Class<Userstatus> getEntityClass() {
        return Userstatus.class;
    }
}
