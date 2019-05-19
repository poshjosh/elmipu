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

import com.bc.elmi.pu.entities.Messagetype;

/**
 * @author Chinomso Bassey Ikwuagwu on May 11, 2019 3:16:35 PM
 */
public enum MessagetypeEnum implements DatabaseEnum<Messagetype>{
    
    Generic(1),
    Email(2),
    Chat(3),
    Comment(4);
    
    private final Short id;
    private final String value;
    
    private MessagetypeEnum(int id) {
        this(id, null);
    }
    
    private MessagetypeEnum(int id, String value) {
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
    public Messagetype getEntity() {
        return new Messagetype(id);
    }
    
    @Override
    public Class<Messagetype> getEntityClass() {
        return Messagetype.class;
    }
}

