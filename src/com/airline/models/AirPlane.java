package com.airline.models;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: AirPlane
 *
 */
@Entity

public class AirPlane implements Serializable {

	private static final long serialVersionUID = 1L;

	public AirPlane() {
		super();
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;

	private String planeMake;

	private String planeModel;

	private Integer settingCapacity;
	
	@OneToOne(mappedBy = "airplaneDetail")
	private Flight flight;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPlaneMake() {
		return planeMake;
	}

	public void setPlaneMake(String planeMake) {
		this.planeMake = planeMake;
	}

	public String getPlaneModel() {
		return planeModel;
	}

	public void setPlaneModel(String planeModel) {
		this.planeModel = planeModel;
	}

	public Integer getSettingCapacity() {
		return settingCapacity;
	}

	public void setSettingCapacity(Integer settingCapacity) {
		this.settingCapacity = settingCapacity;
	}

	@Override
	public String toString() {
		return "AirPlane [id=" + id + ", planeMake=" + planeMake + ", planeModel=" + planeModel + ", settingCapacity="
				+ settingCapacity + "]";
	}

}
