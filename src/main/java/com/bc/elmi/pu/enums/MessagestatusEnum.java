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

import com.bc.elmi.pu.entities.Messagestatus;

/**
 * @author Chinomso Bassey Ikwuagwu on May 10, 2019 7:23:27 PM
 */
public enum MessagestatusEnum implements DatabaseEnum<Messagestatus>{
    
    Unsent(1),
    Send_Failed(2, "Send Failed"),
    Partially_Sent(3, "Partially Sent"),
    Sent(4),
    Delivery_Status_Unknown(5, "Delivery Status Unknown"),
    Partially_Delivered(6, "Partially Delivered"),
    Delivered(7),
    Read(8);
    
    private final Short id;
    private final String value;
    
    private MessagestatusEnum(int id) {
        this(id, null);
    }
    
    private MessagestatusEnum(int id, String value) {
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
    public Messagestatus getEntity() {
        return new Messagestatus(id);
    }
    
    @Override
    public Class<Messagestatus> getEntityClass() {
        return Messagestatus.class;
    }
}
