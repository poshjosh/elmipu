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

package com.bc.elmi.pu.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * @author Chinomso Bassey Ikwuagwu on May 16, 2019 8:52:58 PM
 */
@Table(name = "messageaccess")
@Entity
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Messageaccess.findAll", query = "SELECT m FROM Messageaccess m"),
    @NamedQuery(name = "Messageaccess.findByMessageaccessid", query = "SELECT m FROM Messageaccess m WHERE m.messageaccessid = :messageaccessid"),
    @NamedQuery(name = "Messageaccess.findByAccesstime", query = "SELECT m FROM Messageaccess m WHERE m.accesstime = :accesstime")})
public class Messageaccess implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    private Integer messageaccessid;
    @Basic(optional = false)
    //@NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @javax.persistence.Convert(converter=com.bc.elmi.pu.DateConverterJpa.class)
    private Date accesstime;
    @JoinColumn(name = "messageaccessinguser", referencedColumnName = "userid")
    @ManyToOne(fetch = FetchType.LAZY)
    private User messageaccessinguser;
    @JoinColumn(name = "accessedmessage", referencedColumnName = "messageid")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Message accessedmessage;

    public Messageaccess() {
    }

    public Messageaccess(Integer messageaccessid) {
        this.messageaccessid = messageaccessid;
    }

    public Messageaccess(Integer messageaccessid, Date accesstime) {
        this.messageaccessid = messageaccessid;
        this.accesstime = accesstime;
    }

    public Integer getMessageaccessid() {
        return messageaccessid;
    }

    public void setMessageaccessid(Integer messageaccessid) {
        this.messageaccessid = messageaccessid;
    }

    public Date getAccesstime() {
        return accesstime;
    }

    public void setAccesstime(Date accesstime) {
        this.accesstime = accesstime;
    }

    public User getMessageaccessinguser() {
        return messageaccessinguser;
    }

    public void setMessageaccessinguser(User messageaccessinguser) {
        this.messageaccessinguser = messageaccessinguser;
    }

    public Message getAccessedmessage() {
        return accessedmessage;
    }

    public void setAccessedmessage(Message accessedmessage) {
        this.accessedmessage = accessedmessage;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (messageaccessid != null ? messageaccessid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Messageaccess)) {
            return false;
        }
        Messageaccess other = (Messageaccess) object;
        if ((this.messageaccessid == null && other.messageaccessid != null) || (this.messageaccessid != null && !this.messageaccessid.equals(other.messageaccessid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.bc.elmi.pu.entities.Messageaccess[ messageaccessid=" + messageaccessid + " ]";
    }

}
