/**
 * This file is generated with Kurento-maven-plugin.
 * Please don't edit.
 */
package org.kurento.module.msdata;

import org.kurento.client.*;

/**
 *
 * KmsShowData interface. Documentation about the module
 *
 **/
@org.kurento.client.internal.RemoteClass
public interface KmsShowData extends MediaElement {


    



    public class Builder extends AbstractBuilder<KmsShowData> {

/**
 *
 * Creates a Builder for KmsShowData
 *
 **/
    public Builder(org.kurento.client.MediaPipeline mediaPipeline){

      super(KmsShowData.class,mediaPipeline);

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