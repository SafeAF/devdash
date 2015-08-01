class Stor < ActiveRecord::Base
	#carrierwave stuff failed to work
	mount_uploader :uploadurl#, Upload_fileUploader

end

