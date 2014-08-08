<?php
class GalleryImage extends DataObject {

    public static $db = array(
            "Title" => "Varchar",
            "SortOrder" =>"Int"
    );

    public static $has_one = array(
            "Image" => "Image",
            "Page" => "Page"
    );

    function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->removeByName("PageID");
        $fields->removeByName("SortOrder");
        $fields->addFieldToTab('Root.Main',new TextField('Title',"Name"));
        $fields->addFieldToTab('Root.Main',  $uploadField = new UploadField($name = 'Image',$title = 'Upload a Photo'));
        $uploadField->setFolderName('GalleryImages');
        $uploadField->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif')); 
        return $fields;
    }

    public function getCMSValidator() { 
      return new GalleryImage_Validator(); 
    } 

    public function getValidator() { 
      return new GalleryImage_Validator(); 
    } 

}

class GalleryImage_Validator extends RequiredFields { 
   function php($data) { 
      $bRet = parent::php($data);
        if (empty($data['Title'])) { 
            $this->validationError('Title','Title is required',"required"); 
            $bRet = false; 
        }

        return $bRet; 
   } 
}