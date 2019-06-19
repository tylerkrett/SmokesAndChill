<?php
class ControllerModuleTmCookiePolicy extends Controller {
	public function index($setting) {
		$this->load->language('module/tm_cookie_policy');
		$this->document->addStyle('catalog/view/theme/' . $this->config->get($this->config->get('config_theme') . '_directory') . '/js/tmcookiepolicy/tmcookiepolicy.css');
		$data['text_cookie_close'] = $this->language->get('text_cookie_close');

		if (isset($setting['tm_cookie_policy_message'][$this->config->get('config_language_id')])) {
			$data['text_cookie'] = html_entity_decode($setting['tm_cookie_policy_message'][$this->config->get('config_language_id')]['description'], ENT_QUOTES, 'UTF-8');
		}

		$data['heading_title'] = $this->language->get('heading_title');

		$data['geocode'] = $this->config->get('config_geocode');

		return $this->load->view('module/tm_cookie_policy', $data);
	}
}