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
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * @author Chinomso Bassey Ikwuagwu on May 16, 2019 8:52:57 PM
 */
@Table(name = "testsetting")
@Entity
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Testsetting.findAll", query = "SELECT t FROM Testsetting t"),
    @NamedQuery(name = "Testsetting.findByTestsettingid", query = "SELECT t FROM Testsetting t WHERE t.testsettingid = :testsettingid")})
public class Testsetting implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    private Integer testsettingid;
    @JoinColumn(name = "settingtest", referencedColumnName = "testid")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Test settingtest;
    @JoinColumn(name = "testsetting", referencedColumnName = "documentid")
    @OneToOne(optional = false, fetch = FetchType.LAZY)
    private Document testsetting;

    public Testsetting() {
    }

    public Testsetting(Integer testsettingid) {
        this.testsettingid = testsettingid;
    }

    public Integer getTestsettingid() {
        return testsettingid;
    }

    public void setTestsettingid(Integer testsettingid) {
        this.testsettingid = testsettingid;
    }

    public Test getSettingtest() {
        return settingtest;
    }

    public void setSettingtest(Test settingtest) {
        this.settingtest = settingtest;
    }

    public Document getTestsetting() {
        return testsetting;
    }

    public void setTestsetting(Document testsetting) {
        this.testsetting = testsetting;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (testsettingid != null ? testsettingid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Testsetting)) {
            return false;
        }
        Testsetting other = (Testsetting) object;
        if ((this.testsettingid == null && other.testsettingid != null) || (this.testsettingid != null && !this.testsettingid.equals(other.testsettingid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.bc.elmi.pu.entities.Testsetting[ testsettingid=" + testsettingid + " ]";
    }

}
