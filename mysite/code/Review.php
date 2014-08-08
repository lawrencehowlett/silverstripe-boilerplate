<?php
 
class Review extends DataObject {
 
  
  private static $db = array(	
	  'PersonName' => 'Varchar',
    'Testimonial' => 'Text',
    "DateSent" => "Date",
    'SortOrder' => 'Int'
  );
 
  // One-to-one relationship with gallery page
  private static $has_one = array(
    'Page' => 'Page'	
  );
 
 // tidy up the CMS by not showing these fields
  public function getCMSFields() {
 		$fields = parent::getCMSFields();

    $fields->removeByName('DateSent');
    $enquiry = new DateField('DateSent', 'Date');

		$fields->removeFieldFromTab("Root.Main","PageID");
    $fields->removeFieldFromTab("Root.Main","SortOrder");
    $fields->addFieldToTab('Root.Main', $enquiry->setConfig('showcalendar', true));
		return $fields;		
  }
  
  // Tell the datagrid what fields to show in the table
   private static $summary_fields = array( 
	   'PersonName' => 'PersonName' ,
    'Testimonial' => 'Testimonial',
    "DateSent" => "DateSent" 
   );
   public function getCMSValidator() { 
      return new Review_Validator(); 
    } 

    public function getValidator() { 
      return new Review_Validator(); 
    } 
  
}

class Review_Validator extends RequiredFields { 
   function php($data) { 
      $bRet = parent::php($data);
        if (empty($data['PersonName'])) { 
            $this->validationError('PersonName','Persons name is required',"required"); 
            $bRet = false; 
        }

        if (empty($data['Testimonial'])) { 
         $this->validationError('Testimonial','Testimonial is required',"required"); 
         $bRet = false; 
        }
        if (empty($data['DateSent'])) { 
         $this->validationError('DateSent','Date sent is required',"required"); 
         $bRet = false; 
        }
        

        return $bRet; 
   } 
}