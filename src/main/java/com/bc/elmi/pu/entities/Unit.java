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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
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
@Table(name = "unit")
@Entity
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Unit.findAll", query = "SELECT u FROM Unit u"),
    @NamedQuery(name = "Unit.findByUnitid", query = "SELECT u FROM Unit u WHERE u.unitid = :unitid"),
    @NamedQuery(name = "Unit.findByUnitname", query = "SELECT u FROM Unit u WHERE u.unitname = :unitname"),
    @NamedQuery(name = "Unit.findByDescription", query = "SELECT u FROM Unit u WHERE u.description = :description"),
    @NamedQuery(name = "Unit.findByTimecreated", query = "SELECT u FROM Unit u WHERE u.timecreated = :timecreated"),
    @NamedQuery(name = "Unit.findByTimemodified", query = "SELECT u FROM Unit u WHERE u.timemodified = :timemodified")})
public class Unit implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    private Short unitid;
    @Basic(optional = false)
    //@NotNull
    @Size(min = 1, max = 128)
    private String unitname;
    @Size(max = 512)
    private String description;
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
    @ManyToMany(mappedBy = "unitList", fetch = FetchType.LAZY)
    private List<Test> testList;
    @OneToMany(mappedBy = "parentunit", fetch = FetchType.LAZY)
    private List<Unit> unitList;
    @JoinColumn(name = "parentunit", referencedColumnName = "unitid")
    @ManyToOne(fetch = FetchType.LAZY)
    private Unit parentunit;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "unit", fetch = FetchType.LAZY)
    private List<User> userList;

    public Unit() {
    }

    public Unit(Short unitid) {
        this.unitid = unitid;
    }

    public Unit(Short unitid, String unitname, Date timecreated, Date timemodified) {
        this.unitid = unitid;
        this.unitname = unitname;
        this.timecreated = timecreated;
        this.timemodified = timemodified;
    }

    public Short getUnitid() {
        return unitid;
    }

    public void setUnitid(Short unitid) {
        this.unitid = unitid;
    }

    public String getUnitname() {
        return unitname;
    }

    public void setUnitname(String unitname) {
        this.unitname = unitname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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
    public List<Test> getTestList() {
        return testList;
    }

    public void setTestList(List<Test> testList) {
        this.testList = testList;
    }

    @XmlTransient
    public List<Unit> getUnitList() {
        return unitList;
    }

    public void setUnitList(List<Unit> unitList) {
        this.unitList = unitList;
    }

    public Unit getParentunit() {
        return parentunit;
    }

    public void setParentunit(Unit parentunit) {
        this.parentunit = parentunit;
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
        hash += (unitid != null ? unitid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Unit)) {
            return false;
        }
        Unit other = (Unit) object;
        if ((this.unitid == null && other.unitid != null) || (this.unitid != null && !this.unitid.equals(other.unitid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.bc.elmi.pu.entities.Unit[ unitid=" + unitid + " ]";
    }

}
