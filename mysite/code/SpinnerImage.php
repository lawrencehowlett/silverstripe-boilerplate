<?php
class SpinnerImage extends DataObject {

    public static $db = array(
            "Title" => "Varchar",
            "BlackText" => "Varchar",
            "WhiteText" => "Text",
            "SortOrder" =>"Int",
            'TargetPageID'  => "Varchar",
    );

    public static $has_one = array(
            "Image" => "Image",
            "Page" => "Page"
    );

    function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->removeByName("PageID");
        $fields->removeByName("SortOrder");
        $fields->addFieldToTab('Root.Main',new TextField('Title',"Blue Text"));
        $fields->addFieldToTab('Root.Main',new TextField('BlackText',"Black Text"));
        $fields->addFieldToTab('Root.Main',new TextField('WhiteText',"White Text"));
        $fields->addFieldToTab('Root.Main',new TreeDropdownField("TargetPageID", "Select a page to link to", "SiteTree"));
        $fields->addFieldToTab('Root.Main',  $uploadField = new UploadField($name = 'Image',$title = 'Upload a Photo'));
        $uploadField->setFolderName('HomepageImages');
        $uploadField->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif')); 
        return $fields;
    }

    public function getCMSValidator() { 
      return new SpinnerImage_Validator(); 
    } 

    public function getValidator() { 
      return new SpinnerImage_Validator(); 
    } 

    public function CTALink(){
        if ($this->TargetPageID > 0){
            //$URLString = DataObject::get_by_id("SiteTree", $this->TargetPageID)->Link();
            $URLData = DataObject::get_by_id("SiteTree", $this->TargetPageID);
            if (is_object($URLData)){
                $URLString = $URLData->Link();
            } else {
                $URLString = $this->TargetPageID;
            }
            return $URLString;
        } else {
            return false;
        }
    }

}

class SpinnerImage_Validator extends RequiredFields { 
   function php($data) { 
      $bRet = parent::php($data);
        if (empty($data['Title'])) { 
            $this->validationError('Title','Title is required',"required"); 
            $bRet = false; 
        }

        return $bRet; 
   } 
}