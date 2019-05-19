/*
 * Copyright 2016 NUROX Ltd.
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
package com.bc.elmi.pu;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import java.util.logging.Logger;
import javax.persistence.AttributeConverter;

/**
 * @author Chinomso Bassey Ikwuagwu on May 16, 2019 6:42:57 PM
 */
@javax.persistence.Converter(autoApply=false)
public class DateConverterJpa implements AttributeConverter<Date, Date>{

    private static final Logger LOG = Logger.getLogger(DateConverterJpa.class.getName());

    public static final int CONVERT_NONE = 0;
    public static final int CONVERT_DATABASE_TO_ENTITY_VALUE = 1;
    public static final int CONVERT_ENTITY_TO_DATABASE_VALUE = 2;
    public static final int CONVERT_BOTH = 3;
    
    private static boolean initialized = false;
    
    private static Converter<Date, Date> dbToEntity;
    private static Converter<Date, Date> entityToDb;
    private final DateFormat df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mmZ");
    
    @Override
    public Date convertToDatabaseColumn(Date attribute) {
        
        final Date update = attribute == null ? null : 
                entityToDb == null ? attribute : entityToDb.convert(attribute);
        
//        LOG.finer(() -> "Converted from entity value: " + (attribute==null?null:df.format(attribute)) + 
//                ", to database value: " + (update==null?null:df.format(update)));
        return update;
    }

    @Override
    public Date convertToEntityAttribute(Date dbData) {
        
        final Date update = dbData == null ? null : 
                dbToEntity == null ? dbData : dbToEntity.convert(dbData);
        
//        LOG.finer(() -> "Converted from database value: " + (dbData == null ? null : df.format(dbData)) + 
//                ", to entity value: " + (update == null ? null : df.format(update)));
        return update;
    }

    public static void init(TimeZone dbTimeZone, TimeZone entityTimeZone) {
        init(dbTimeZone, entityTimeZone, CONVERT_BOTH);
    }
    
    public static void init(TimeZone dbTimeZone, TimeZone entityTimeZone, int mode) {
        
        
        validateNotInitialized();
        
        initialized = true;
        
        switch(mode) {
            case CONVERT_NONE:
                dbToEntity = null;
                entityToDb = null;
                break;
            case CONVERT_DATABASE_TO_ENTITY_VALUE:
                dbToEntity = new DateTimeConverter(dbTimeZone, entityTimeZone);    
                break;
            case CONVERT_ENTITY_TO_DATABASE_VALUE: 
                entityToDb = new DateTimeConverter(entityTimeZone, dbTimeZone);
                break;
            case CONVERT_BOTH:
                dbToEntity = new DateTimeConverter(dbTimeZone, entityTimeZone);    
                entityToDb = new DateTimeConverter(entityTimeZone, dbTimeZone);
                break;
            default:
                throw new UnsupportedOperationException();
        }
    }
    
    private static void validateNotInitialized() {
        if(initialized) {
            throw new IllegalStateException("Already initialized");
        }
    }
}
