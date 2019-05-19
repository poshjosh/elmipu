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
 * @author Chinomso Bassey Ikwuagwu on May 16, 2019 8:52:57 PM
 */
@Table(name = "userstatus")
@Entity
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Userstatus.findAll", query = "SELECT u FROM Userstatus u"),
    @NamedQuery(name = "Userstatus.findByUserstatusid", query = "SELECT u FROM Userstatus u WHERE u.userstatusid = :userstatusid"),
    @NamedQuery(name = "Userstatus.findByUserstatusname", query = "SELECT u FROM Userstatus u WHERE u.userstatusname = :userstatusname"),
    @NamedQuery(name = "Userstatus.findByTimecreated", query = "SELECT u FROM Userstatus u WHERE u.timecreated = :timecreated"),
    @NamedQuery(name = "Userstatus.findByTimemodified", query = "SELECT u FROM Userstatus u WHERE u.timemodified = :timemodified")})
public class Userstatus implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    private Short userstatusid;
    @Basic(optional = false)
    //@NotNull
    @Size(min = 1, max = 32)
    private String userstatusname;
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
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userstatus", fetch = FetchType.LAZY)
    private List<User> userList;

    public Userstatus() {
    }

    public Userstatus(Short userstatusid) {
        this.userstatusid = userstatusid;
    }

    public Userstatus(Short userstatusid, String userstatusname, Date timecreated, Date timemodified) {
        this.userstatusid = userstatusid;
        this.userstatusname = userstatusname;
        this.timecreated = timecreated;
        this.timemodified = timemodified;
    }

    public Short getUserstatusid() {
        return userstatusid;
    }

    public void setUserstatusid(Short userstatusid) {
        this.userstatusid = userstatusid;
    }

    public String getUserstatusname() {
        return userstatusname;
    }

    public void setUserstatusname(String userstatusname) {
        this.userstatusname = userstatusname;
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
    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (userstatusid != null ? userstatusid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Userstatus)) {
            return false;
        }
        Userstatus other = (Userstatus) object;
        if ((this.userstatusid == null && other.userstatusid != null) || (this.userstatusid != null && !this.userstatusid.equals(other.userstatusid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.bc.elmi.pu.entities.Userstatus[ userstatusid=" + userstatusid + " ]";
    }

}
