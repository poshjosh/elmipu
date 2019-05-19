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
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 * @author Chinomso Bassey Ikwuagwu on May 16, 2019 8:52:58 PM
 */
@Table(name = "messagestatus")
@Entity
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Messagestatus.findAll", query = "SELECT m FROM Messagestatus m"),
    @NamedQuery(name = "Messagestatus.findByMessagestatusid", query = "SELECT m FROM Messagestatus m WHERE m.messagestatusid = :messagestatusid"),
    @NamedQuery(name = "Messagestatus.findByMessagestatusname", query = "SELECT m FROM Messagestatus m WHERE m.messagestatusname = :messagestatusname"),
    @NamedQuery(name = "Messagestatus.findByTimecreated", query = "SELECT m FROM Messagestatus m WHERE m.timecreated = :timecreated"),
    @NamedQuery(name = "Messagestatus.findByTimemodified", query = "SELECT m FROM Messagestatus m WHERE m.timemodified = :timemodified")})
public class Messagestatus implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    private Short messagestatusid;
    @Basic(optional = false)
    //@NotNull
    @Size(min = 1, max = 32)
    private String messagestatusname;
    @Basic(optional = false)
    //@NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @javax.persistence.Convert(converter=com.bc.elmi.pu.DateConverterJpa.class)
    private Date timecreated;
    @Basic(optional = false)
    //@NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @javax.persistence.Convert(converter=com.bc.elmi.pu.DateConverterJpa.class)
    private Date timemodified;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "status", fetch = FetchType.LAZY)
    private List<Message> messageList;

    public Messagestatus() {
    }

    public Messagestatus(Short messagestatusid) {
        this.messagestatusid = messagestatusid;
    }

    public Messagestatus(Short messagestatusid, String messagestatusname, Date timecreated, Date timemodified) {
        this.messagestatusid = messagestatusid;
        this.messagestatusname = messagestatusname;
        this.timecreated = timecreated;
        this.timemodified = timemodified;
    }

    public Short getMessagestatusid() {
        return messagestatusid;
    }

    public void setMessagestatusid(Short messagestatusid) {
        this.messagestatusid = messagestatusid;
    }

    public String getMessagestatusname() {
        return messagestatusname;
    }

    public void setMessagestatusname(String messagestatusname) {
        this.messagestatusname = messagestatusname;
    }

    public Date getTimecreated() {
        return timecreated;
    }

    public void setTimecreated(Date timecreated) {
        this.timecreated = timecreated;
    }

    public Date getTimemodified() {
        return timemodified;
    }

    public void setTimemodified(Date timemodified) {
        this.timemodified = timemodified;
    }

    @XmlTransient
    public List<Message> getMessageList() {
        return messageList;
    }

    public void setMessageList(List<Message> messageList) {
        this.messageList = messageList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (messagestatusid != null ? messagestatusid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Messagestatus)) {
            return false;
        }
        Messagestatus other = (Messagestatus) object;
        if ((this.messagestatusid == null && other.messagestatusid != null) || (this.messagestatusid != null && !this.messagestatusid.equals(other.messagestatusid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.bc.elmi.pu.entities.Messagestatus[ messagestatusid=" + messagestatusid + " ]";
    }

}
