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
@Table(name = "mimetype")
@Entity
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Mimetype.findAll", query = "SELECT m FROM Mimetype m"),
    @NamedQuery(name = "Mimetype.findByMimetypeid", query = "SELECT m FROM Mimetype m WHERE m.mimetypeid = :mimetypeid"),
    @NamedQuery(name = "Mimetype.findByMimetypename", query = "SELECT m FROM Mimetype m WHERE m.mimetypename = :mimetypename"),
    @NamedQuery(name = "Mimetype.findByExtension", query = "SELECT m FROM Mimetype m WHERE m.extension = :extension"),
    @NamedQuery(name = "Mimetype.findByDescription", query = "SELECT m FROM Mimetype m WHERE m.description = :description"),
    @NamedQuery(name = "Mimetype.findByTimecreated", query = "SELECT m FROM Mimetype m WHERE m.timecreated = :timecreated"),
    @NamedQuery(name = "Mimetype.findByTimemodified", query = "SELECT m FROM Mimetype m WHERE m.timemodified = :timemodified")})
public class Mimetype implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    private Integer mimetypeid;
    @Basic(optional = false)
    //@NotNull
    @Size(min = 1, max = 128)
    private String mimetypename;
    @Basic(optional = false)
    //@NotNull
    @Size(min = 1, max = 8)
    private String extension;
    @Basic(optional = false)
    //@NotNull
    @Size(min = 1, max = 128)
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
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "mimetype", fetch = FetchType.LAZY)
    private List<Document> documentList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "mimetype", fetch = FetchType.LAZY)
    private List<Message> messageList;

    public Mimetype() {
    }

    public Mimetype(Integer mimetypeid) {
        this.mimetypeid = mimetypeid;
    }

    public Mimetype(Integer mimetypeid, String mimetypename, String extension, String description, Date timecreated, Date timemodified) {
        this.mimetypeid = mimetypeid;
        this.mimetypename = mimetypename;
        this.extension = extension;
        this.description = description;
        this.timecreated = timecreated;
        this.timemodified = timemodified;
    }

    public Integer getMimetypeid() {
        return mimetypeid;
    }

    public void setMimetypeid(Integer mimetypeid) {
        this.mimetypeid = mimetypeid;
    }

    public String getMimetypename() {
        return mimetypename;
    }

    public void setMimetypename(String mimetypename) {
        this.mimetypename = mimetypename;
    }

    public String getExtension() {
        return extension;
    }

    public void setExtension(String extension) {
        this.extension = extension;
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
    public List<Document> getDocumentList() {
        return documentList;
    }

    public void setDocumentList(List<Document> documentList) {
        this.documentList = documentList;
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
        hash += (mimetypeid != null ? mimetypeid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Mimetype)) {
            return false;
        }
        Mimetype other = (Mimetype) object;
        if ((this.mimetypeid == null && other.mimetypeid != null) || (this.mimetypeid != null && !this.mimetypeid.equals(other.mimetypeid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.bc.elmi.pu.entities.Mimetype[ mimetypeid=" + mimetypeid + " ]";
    }

}
