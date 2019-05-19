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
@Table(name = "user")
@Entity
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "User.findAll", query = "SELECT u FROM User u"),
    @NamedQuery(name = "User.findByUserid", query = "SELECT u FROM User u WHERE u.userid = :userid"),
    @NamedQuery(name = "User.findByUsername", query = "SELECT u FROM User u WHERE u.username = :username"),
    @NamedQuery(name = "User.findByEmailaddress", query = "SELECT u FROM User u WHERE u.emailaddress = :emailaddress"),
    @NamedQuery(name = "User.findByPassword", query = "SELECT u FROM User u WHERE u.password = :password"),
    @NamedQuery(name = "User.findByLastname", query = "SELECT u FROM User u WHERE u.lastname = :lastname"),
    @NamedQuery(name = "User.findByFirstname", query = "SELECT u FROM User u WHERE u.firstname = :firstname"),
    @NamedQuery(name = "User.findByDateofbirth", query = "SELECT u FROM User u WHERE u.dateofbirth = :dateofbirth"),
    @NamedQuery(name = "User.findByPhonenumber1", query = "SELECT u FROM User u WHERE u.phonenumber1 = :phonenumber1"),
    @NamedQuery(name = "User.findByPhonenumber2", query = "SELECT u FROM User u WHERE u.phonenumber2 = :phonenumber2"),
    @NamedQuery(name = "User.findByProfileimage", query = "SELECT u FROM User u WHERE u.profileimage = :profileimage"),
    @NamedQuery(name = "User.findByTimecreated", query = "SELECT u FROM User u WHERE u.timecreated = :timecreated"),
    @NamedQuery(name = "User.findByTimemodified", query = "SELECT u FROM User u WHERE u.timemodified = :timemodified")})
public class User implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    private Integer userid;
    @Basic(optional = false)
    //@NotNull
    @Size(min = 1, max = 128)
    private String username;
    @Size(max = 128)
    private String emailaddress;
    @Basic(optional = false)
    //@NotNull
    @Size(min = 1, max = 1024)
    private String password;
    @Size(max = 128)
    private String lastname;
    @Size(max = 128)
    private String firstname;
    @Temporal(TemporalType.DATE)
    @javax.persistence.Convert(converter=com.bc.elmi.pu.DateConverterJpa.class)
    private Date dateofbirth;
    @Size(max = 32)
    private String phonenumber1;
    @Size(max = 32)
    private String phonenumber2;
    @Size(max = 256)
    private String profileimage;
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
    @ManyToMany(mappedBy = "userList", fetch = FetchType.LAZY)
    private List<Test> testList;
    @ManyToMany(mappedBy = "userList", fetch = FetchType.LAZY)
    private List<Course> courseList;
    @ManyToMany(mappedBy = "userList", fetch = FetchType.LAZY)
    private List<Message> messageList;
    @JoinTable(name = "userrole", joinColumns = {
        @JoinColumn(name = "user", referencedColumnName = "userid")}, inverseJoinColumns = {
        @JoinColumn(name = "role", referencedColumnName = "roleid")})
    @ManyToMany(fetch = FetchType.LAZY)
    private List<Role> roleList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "author", fetch = FetchType.LAZY)
    private List<Document> documentList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "sender", fetch = FetchType.LAZY)
    private List<Message> messageList1;
    @OneToMany(mappedBy = "documentaccessinguser", fetch = FetchType.LAZY)
    private List<Documentaccess> documentaccessList;
    @OneToMany(mappedBy = "messageaccessinguser", fetch = FetchType.LAZY)
    private List<Messageaccess> messageaccessList;
    @JoinColumn(name = "userstatus", referencedColumnName = "userstatusid")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Userstatus userstatus;
    @JoinColumn(name = "unit", referencedColumnName = "unitid")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Unit unit;
    @JoinColumn(name = "appointment", referencedColumnName = "appointmentid")
    @ManyToOne(fetch = FetchType.LAZY)
    private Appointment appointment;
    @JoinColumn(name = "gender", referencedColumnName = "genderid")
    @ManyToOne(fetch = FetchType.LAZY)
    private Gender gender;

    public User() {
    }

    public User(Integer userid) {
        this.userid = userid;
    }

    public User(Integer userid, String username, String password, Date timecreated, Date timemodified) {
        this.userid = userid;
        this.username = username;
        this.password = password;
        this.timecreated = timecreated;
        this.timemodified = timemodified;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmailaddress() {
        return emailaddress;
    }

    public void setEmailaddress(String emailaddress) {
        this.emailaddress = emailaddress;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public Date getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(Date dateofbirth) {
        this.dateofbirth = dateofbirth;
    }

    public String getPhonenumber1() {
        return phonenumber1;
    }

    public void setPhonenumber1(String phonenumber1) {
        this.phonenumber1 = phonenumber1;
    }

    public String getPhonenumber2() {
        return phonenumber2;
    }

    public void setPhonenumber2(String phonenumber2) {
        this.phonenumber2 = phonenumber2;
    }

    public String getProfileimage() {
        return profileimage;
    }

    public void setProfileimage(String profileimage) {
        this.profileimage = profileimage;
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
    public List<Course> getCourseList() {
        return courseList;
    }

    public void setCourseList(List<Course> courseList) {
        this.courseList = courseList;
    }

    @XmlTransient
    public List<Message> getMessageList() {
        return messageList;
    }

    public void setMessageList(List<Message> messageList) {
        this.messageList = messageList;
    }

    @XmlTransient
    public List<Role> getRoleList() {
        return roleList;
    }

    public void setRoleList(List<Role> roleList) {
        this.roleList = roleList;
    }

    @XmlTransient
    public List<Document> getDocumentList() {
        return documentList;
    }

    public void setDocumentList(List<Document> documentList) {
        this.documentList = documentList;
    }

    @XmlTransient
    public List<Message> getMessageList1() {
        return messageList1;
    }

    public void setMessageList1(List<Message> messageList1) {
        this.messageList1 = messageList1;
    }

    @XmlTransient
    public List<Documentaccess> getDocumentaccessList() {
        return documentaccessList;
    }

    public void setDocumentaccessList(List<Documentaccess> documentaccessList) {
        this.documentaccessList = documentaccessList;
    }

    @XmlTransient
    public List<Messageaccess> getMessageaccessList() {
        return messageaccessList;
    }

    public void setMessageaccessList(List<Messageaccess> messageaccessList) {
        this.messageaccessList = messageaccessList;
    }

    public Userstatus getUserstatus() {
        return userstatus;
    }

    public void setUserstatus(Userstatus userstatus) {
        this.userstatus = userstatus;
    }

    public Unit getUnit() {
        return unit;
    }

    public void setUnit(Unit unit) {
        this.unit = unit;
    }

    public Appointment getAppointment() {
        return appointment;
    }

    public void setAppointment(Appointment appointment) {
        this.appointment = appointment;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (userid != null ? userid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof User)) {
            return false;
        }
        User other = (User) object;
        if ((this.userid == null && other.userid != null) || (this.userid != null && !this.userid.equals(other.userid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.bc.elmi.pu.entities.User[ userid=" + userid + " ]";
    }

}
