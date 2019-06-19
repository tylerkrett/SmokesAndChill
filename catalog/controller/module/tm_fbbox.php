<?php
class ControllerModuleTmFbbox extends Controller {
	public function index($setting) {
		$this->load->language('module/tm_fbbox');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['page_url']      = $setting['page_url'];
		$data['width']         = $setting['width'];
		$data['height']        = $setting['height'];
		$data['bg']            = $setting['bg'];
		$data['show_facepile'] = $setting['show_facepile'];
		$data['show_posts']    = $setting['show_posts'];
		$data['language']      = $setting['language'];

		if (!empty($setting['app_id'])){
			$data['app_id'] = $setting['app_id'];
		} else {
			$data['app_id'] = '';
		}

		return $this->load->view('module/tm_fbbox', $data);
	}
}