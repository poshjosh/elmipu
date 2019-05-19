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
@Table(name = "message")
@Entity
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Message.findAll", query = "SELECT m FROM Message m"),
    @NamedQuery(name = "Message.findByMessageid", query = "SELECT m FROM Message m WHERE m.messageid = :messageid"),
    @NamedQuery(name = "Message.findBySubject", query = "SELECT m FROM Message m WHERE m.subject = :subject"),
    @NamedQuery(name = "Message.findByContent", query = "SELECT m FROM Message m WHERE m.content = :content"),
    @NamedQuery(name = "Message.findByTimecreated", query = "SELECT m FROM Message m WHERE m.timecreated = :timecreated"),
    @NamedQuery(name = "Message.findByTimemodified", query = "SELECT m FROM Message m WHERE m.timemodified = :timemodified")})
public class Message implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    private Integer messageid;
    @Size(max = 512)
    private String subject;
    @Size(max = 20480)
    private String content;
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
    @JoinTable(name = "messageattachment", joinColumns = {
        @JoinColumn(name = "attachmentmessage", referencedColumnName = "messageid")}, inverseJoinColumns = {
        @JoinColumn(name = "messageattachment", referencedColumnName = "documentid")})
    @ManyToMany(fetch = FetchType.LAZY)
    private List<Document> documentList;
    @JoinTable(name = "messagerecipient", joinColumns = {
        @JoinColumn(name = "receivedmessage", referencedColumnName = "messageid")}, inverseJoinColumns = {
        @JoinColumn(name = "recipient", referencedColumnName = "userid")})
    @ManyToMany(fetch = FetchType.LAZY)
    private List<User> userList;
    @JoinColumn(name = "type", referencedColumnName = "messagetypeid")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Messagetype type;
    @JoinColumn(name = "mimetype", referencedColumnName = "mimetypeid")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Mimetype mimetype;
    @JoinColumn(name = "sender", referencedColumnName = "userid")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private User sender;
    @OneToMany(mappedBy = "repliedto", fetch = FetchType.LAZY)
    private List<Message> messageList;
    @JoinColumn(name = "repliedto", referencedColumnName = "messageid")
    @ManyToOne(fetch = FetchType.LAZY)
    private Message repliedto;
    @JoinColumn(name = "status", referencedColumnName = "messagestatusid")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Messagestatus status;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "accessedmessage", fetch = FetchType.LAZY)
    private List<Messageaccess> messageaccessList;

    public Message() {
    }

    public Message(Integer messageid) {
        this.messageid = messageid;
    }

    public Message(Integer messageid, Date timecreated, Date timemodified) {
        this.messageid = messageid;
        this.timecreated = timecreated;
        this.timemodified = timemodified;
    }

    public Integer getMessageid() {
        return messageid;
    }

    public void setMessageid(Integer messageid) {
        this.messageid = messageid;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
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
    public List<Document> getDocumentList() {
        return documentList;
    }

    public void setDocumentList(List<Document> documentList) {
        this.documentList = documentList;
    }

    @XmlTransient
    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    public Messagetype getType() {
        return type;
    }

    public void setType(Messagetype type) {
        this.type = type;
    }

    public Mimetype getMimetype() {
        return mimetype;
    }

    public void setMimetype(Mimetype mimetype) {
        this.mimetype = mimetype;
    }

    public User getSender() {
        return sender;
    }

    public void setSender(User sender) {
        this.sender = sender;
    }

    @XmlTransient
    public List<Message> getMessageList() {
        return messageList;
    }

    public void setMessageList(List<Message> messageList) {
        this.messageList = messageList;
    }

    public Message getRepliedto() {
        return repliedto;
    }

    public void setRepliedto(Message repliedto) {
        this.repliedto = repliedto;
    }

    public Messagestatus getStatus() {
        return status;
    }

    public void setStatus(Messagestatus status) {
        this.status = status;
    }

    @XmlTransient
    public List<Messageaccess> getMessageaccessList() {
        return messageaccessList;
    }

    public void setMessageaccessList(List<Messageaccess> messageaccessList) {
        this.messageaccessList = messageaccessList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (messageid != null ? messageid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Message)) {
            return false;
        }
        Message other = (Message) object;
        if ((this.messageid == null && other.messageid != null) || (this.messageid != null && !this.messageid.equals(other.messageid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.bc.elmi.pu.entities.Message[ messageid=" + messageid + " ]";
    }

}
