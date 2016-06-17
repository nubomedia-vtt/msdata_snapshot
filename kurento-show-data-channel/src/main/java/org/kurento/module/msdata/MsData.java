/**
 * This file is generated with Kurento-maven-plugin.
 * Please don't edit.
 */
package org.kurento.module.msdata;

import org.kurento.client.*;

/**
 *
 * MsData interface. Documentation about the module
 *
 **/
@org.kurento.client.internal.RemoteClass
public interface MsData extends Filter {


    



    public class Builder extends AbstractBuilder<MsData> {

/**
 *
 * Creates a Builder for MsData
 *
 **/
    public Builder(org.kurento.client.MediaPipeline mediaPipeline){

      super(MsData.class,mediaPipeline);

      props.add("mediaPipeline",mediaPipeline);
    }

	public Builder withProperties(Properties properties) {
    	return (Builder)super.withProperties(properties);
  	}

	public Builder with(String name, Object value) {
		return (Builder)super.with(name, value);
	}
	
    }


}