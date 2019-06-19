<?php
class ControllerModuleOlark extends Controller {
	public function index($setting) {
		if( isset($setting['olark_site_id']) && $setting['olark_site_id'] != '' ){
			$data['olark_site_id'] = $setting['olark_site_id'];
			return $this->load->view('module/olark', $data);
		}
	}
}