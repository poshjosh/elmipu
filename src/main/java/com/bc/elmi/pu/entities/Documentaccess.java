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
@Table(name = "documentaccess")
@Entity
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Documentaccess.findAll", query = "SELECT d FROM Documentaccess d"),
    @NamedQuery(name = "Documentaccess.findByDocumentaccessid", query = "SELECT d FROM Documentaccess d WHERE d.documentaccessid = :documentaccessid"),
    @NamedQuery(name = "Documentaccess.findByAccesstime", query = "SELECT d FROM Documentaccess d WHERE d.accesstime = :accesstime")})
public class Documentaccess implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    private Integer documentaccessid;
    @Basic(optional = false)
    //@NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @javax.persistence.Convert(converter=com.bc.elmi.pu.DateConverterJpa.class)
    private Date accesstime;
    @JoinColumn(name = "documentaccessinguser", referencedColumnName = "userid")
    @ManyToOne(fetch = FetchType.LAZY)
    private User documentaccessinguser;
    @JoinColumn(name = "accesseddocument", referencedColumnName = "documentid")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Document accesseddocument;

    public Documentaccess() {
    }

    public Documentaccess(Integer documentaccessid) {
        this.documentaccessid = documentaccessid;
    }

    public Documentaccess(Integer documentaccessid, Date accesstime) {
        this.documentaccessid = documentaccessid;
        this.accesstime = accesstime;
    }

    public Integer getDocumentaccessid() {
        return documentaccessid;
    }

    public void setDocumentaccessid(Integer documentaccessid) {
        this.documentaccessid = documentaccessid;
    }

    public Date getAccesstime() {
        return accesstime;
    }

    public void setAccesstime(Date accesstime) {
        this.accesstime = accesstime;
    }

    public User getDocumentaccessinguser() {
        return documentaccessinguser;
    }

    public void setDocumentaccessinguser(User documentaccessinguser) {
        this.documentaccessinguser = documentaccessinguser;
    }

    public Document getAccesseddocument() {
        return accesseddocument;
    }

    public void setAccesseddocument(Document accesseddocument) {
        this.accesseddocument = accesseddocument;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (documentaccessid != null ? documentaccessid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Documentaccess)) {
            return false;
        }
        Documentaccess other = (Documentaccess) object;
        if ((this.documentaccessid == null && other.documentaccessid != null) || (this.documentaccessid != null && !this.documentaccessid.equals(other.documentaccessid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.bc.elmi.pu.entities.Documentaccess[ documentaccessid=" + documentaccessid + " ]";
    }

}
