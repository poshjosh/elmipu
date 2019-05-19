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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
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
@Table(name = "test")
@Entity
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Test.findAll", query = "SELECT t FROM Test t"),
    @NamedQuery(name = "Test.findByTestid", query = "SELECT t FROM Test t WHERE t.testid = :testid"),
    @NamedQuery(name = "Test.findByTestname", query = "SELECT t FROM Test t WHERE t.testname = :testname"),
    @NamedQuery(name = "Test.findByDescription", query = "SELECT t FROM Test t WHERE t.description = :description"),
    @NamedQuery(name = "Test.findByStarttime", query = "SELECT t FROM Test t WHERE t.starttime = :starttime"),
    @NamedQuery(name = "Test.findByDurationinminutes", query = "SELECT t FROM Test t WHERE t.durationinminutes = :durationinminutes"),
    @NamedQuery(name = "Test.findByOtherdetails", query = "SELECT t FROM Test t WHERE t.otherdetails = :otherdetails"),
    @NamedQuery(name = "Test.findByTimecreated", query = "SELECT t FROM Test t WHERE t.timecreated = :timecreated"),
    @NamedQuery(name = "Test.findByTimemodified", query = "SELECT t FROM Test t WHERE t.timemodified = :timemodified")})
public class Test implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    private Integer testid;
    @Basic(optional = false)
    //@NotNull
    @Size(min = 1, max = 128)
    private String testname;
    @Size(max = 512)
    private String description;
    @Temporal(TemporalType.TIMESTAMP)
    @javax.persistence.Convert(converter=com.bc.elmi.pu.DateConverterJpa.class)
    private Date starttime;
    private Integer durationinminutes;
    @Size(max = 1024)
    private String otherdetails;
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
    @JoinTable(name = "testcoordinator", joinColumns = {
        @JoinColumn(name = "assignedtest", referencedColumnName = "testid")}, inverseJoinColumns = {
        @JoinColumn(name = "coordinator", referencedColumnName = "userid")})
    @ManyToMany(fetch = FetchType.LAZY)
    private List<User> userList;
    @JoinTable(name = "testgroup", joinColumns = {
        @JoinColumn(name = "grouptest", referencedColumnName = "testid")}, inverseJoinColumns = {
        @JoinColumn(name = "testgroup", referencedColumnName = "unitid")})
    @ManyToMany(fetch = FetchType.LAZY)
    private List<Unit> unitList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "settingtest", fetch = FetchType.LAZY)
    private List<Testsetting> testsettingList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "documenttest", fetch = FetchType.LAZY)
    private List<Testdocument> testdocumentList;

    public Test() {
    }

    public Test(Integer testid) {
        this.testid = testid;
    }

    public Test(Integer testid, String testname, Date timecreated, Date timemodified) {
        this.testid = testid;
        this.testname = testname;
        this.timecreated = timecreated;
        this.timemodified = timemodified;
    }

    public Integer getTestid() {
        return testid;
    }

    public void setTestid(Integer testid) {
        this.testid = testid;
    }

    public String getTestname() {
        return testname;
    }

    public void setTestname(String testname) {
        this.testname = testname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Integer getDurationinminutes() {
        return durationinminutes;
    }

    public void setDurationinminutes(Integer durationinminutes) {
        this.durationinminutes = durationinminutes;
    }

    public String getOtherdetails() {
        return otherdetails;
    }

    public void setOtherdetails(String otherdetails) {
        this.otherdetails = otherdetails;
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

    @XmlTransient
    public List<Unit> getUnitList() {
        return unitList;
    }

    public void setUnitList(List<Unit> unitList) {
        this.unitList = unitList;
    }

    @XmlTransient
    public List<Testsetting> getTestsettingList() {
        return testsettingList;
    }

    public void setTestsettingList(List<Testsetting> testsettingList) {
        this.testsettingList = testsettingList;
    }

    @XmlTransient
    public List<Testdocument> getTestdocumentList() {
        return testdocumentList;
    }

    public void setTestdocumentList(List<Testdocument> testdocumentList) {
        this.testdocumentList = testdocumentList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (testid != null ? testid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Test)) {
            return false;
        }
        Test other = (Test) object;
        if ((this.testid == null && other.testid != null) || (this.testid != null && !this.testid.equals(other.testid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.bc.elmi.pu.entities.Test[ testid=" + testid + " ]";
    }

}
