<?php
class ControllerModuleTmPinterest extends Controller {
	public function index($setting) {
		$this->load->language('module/tm_pinterest');
		
		$data['heading_title'] = $this->language->get('heading_title');

		$data['page_url'] = $setting['page_url'];
		$data['width'] = $setting['width'];
		$data['height'] = $setting['height'];

		if ($this->config->get('fdu_app_id')){
			$data['flb_app_id'] = $this->config->get('fdu_app_id');
		} else {
			$data['flb_app_id'] = false;
		}

		return $this->load->view('module/tm_pinterest', $data);
	}
}