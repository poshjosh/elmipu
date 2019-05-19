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

import com.bc.elmi.pu.entities.Mimetype;

/**
 * @author Chinomso Bassey Ikwuagwu on May 11, 2019 11:56:47 AM
 */
public enum MimetypeEnum implements DatabaseEnum<Mimetype>{
    
    application_octet_stream(6, "application/octet-stream"),
    application_msword_docx(14, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"),
    text_html(19, "text/html"),
    application_json(26, "application/json"),
    text_plain(54, "text/plain");
    
    private final Short id;
    private final String value;
    
    private MimetypeEnum(int id) {
        this(id, null);
    }
    
    private MimetypeEnum(int id, String value) {
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
    public Mimetype getEntity() {
        return new Mimetype(id.intValue());
    }

    @Override
    public Class<Mimetype> getEntityClass() {
        return Mimetype.class;
    }
}

