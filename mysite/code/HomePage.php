<?php
class HomePage extends Page {

	private static $db = array(
	);

	private static $has_one = array(
	);

    private static $has_many = array(
        "SpinnerImages" => "SpinnerImage",
        "CallToActionBlocks" => "CallToActionBlock"
    );

	private static $allowed_children = array(
	);

	private static $default_parent = 'HomePage';

    private static $description = "Home page";
    
    private static $singular_name = 'Home Page';
    
    private static $plural_name = 'Home Pages';
    
    private static $can_be_root = true;

    private static $defaults = array(
        "ProvideComments" => false,
        'ShowInMenus' => true
    );

    function getCMSFields() {
        $fields = parent::getCMSFields();

        //gallery
        $gridFieldConfig = GridFieldConfig_RecordEditor::create(); 
        $gridFieldConfig->addComponent(new GridFieldBulkUpload());  
        $gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder')); 
        $gridfield = new GridField("SpinnerImages", "SpinnerImages", $this->SpinnerImages()->sort("SortOrder"), $gridFieldConfig);
        $fields->addFieldToTab('Root.SpinnerImages', $gridfield);

        //Tabs
        $gridFieldConfig = GridFieldConfig_RecordEditor::create();   
        $gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));
        $grid = new GridField('CallToActionBlocks ', 'CallToActionBlocks', $this->CallToActionBlocks(),$gridFieldConfig); 
        $grid->getConfig()->getComponentByType('GridFieldDetailForm')->setValidator(singleton('CallToActionBlock')->getCMSValidator()); 
        $fields->addFieldToTab('Root.CallToActionBlocks', $grid);

        return $fields;
    }

}
class HomePage_Controller extends Page_Controller {


}
