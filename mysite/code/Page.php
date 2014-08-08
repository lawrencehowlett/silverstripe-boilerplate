<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);

	private static $has_many = array(
		"GalleryImages" => "GalleryImage",
		"ContentTabs" => "ContentTab",
		"Reviews" => "Review",
		"Faqs" => "Faq"
	);

	function getCMSFields() {
        $fields = parent::getCMSFields();

        //gallery
        $gridFieldConfig = GridFieldConfig_RecordEditor::create(); 
	    $gridFieldConfig->addComponent(new GridFieldBulkUpload());  
	    $gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder')); 
	    $gridfield = new GridField("GalleryImages", "Gallery Images", $this->GalleryImages()->sort("SortOrder"), $gridFieldConfig);
	    $fields->addFieldToTab('Root.GalleryImages', $gridfield);

	    //Tabs
	    $gridFieldConfig = GridFieldConfig_RecordEditor::create();   
        $gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));
        $grid = new GridField('ContentTabs ', 'ContentTabs', $this->ContentTabs(),$gridFieldConfig); 
		$grid->getConfig()->getComponentByType('GridFieldDetailForm')->setValidator(singleton('ContentTab')->getCMSValidator()); 
		$fields->addFieldToTab('Root.Tabs', $grid);

		//Reviews
	    $gridFieldConfig = GridFieldConfig_RecordEditor::create();   
        $gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));
        $grid = new GridField('Reviews ', 'Reviews', $this->Reviews(),$gridFieldConfig); 
		$grid->getConfig()->getComponentByType('GridFieldDetailForm')->setValidator(singleton('Review')->getCMSValidator()); 
		$fields->addFieldToTab('Root.Reviews', $grid);

		//Faqs
	    $gridFieldConfig = GridFieldConfig_RecordEditor::create();   
        $gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));
        $grid = new GridField('Faqs ', 'Faqs', $this->Faqs(),$gridFieldConfig); 
		$grid->getConfig()->getComponentByType('GridFieldDetailForm')->setValidator(singleton('Faq')->getCMSValidator()); 
		$fields->addFieldToTab('Root.Faqs', $grid);

        return $fields;
    }

}
class Page_Controller extends ContentController {

	
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
	}

}
