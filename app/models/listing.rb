class Listing < ApplicationRecord
	mount_uploaders :photo, PhotoUploader

end
