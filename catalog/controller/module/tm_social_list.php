<?php

class ControllerModuleTmSocialList extends Controller
{
    public function index($setting)
    {
        $this->load->language('module/tm_social_list');
        $this->load->model('setting/setting');

        $data['text_youtube'] = $this->language->get('text_youtube');
        $data['text_facebook'] = $this->language->get('text_facebook');
        $data['text_google_plus'] = $this->language->get('text_google_plus');
        $data['text_twitter'] = $this->language->get('text_twitter');
        $data['text_pinterest'] = $this->language->get('text_pinterest');
        $data['text_instagram'] = $this->language->get('text_instagram');
        $data['text_vimeo'] = $this->language->get('text_vimeo');
        $data['text_heading'] = $this->language->get('text_heading');


        $data['youtube'] = $this->config->get('tm_social_list_youtube');
        $data['facebook'] = $this->config->get('tm_social_list_facebook');
        $data['google_plus'] = $this->config->get('tm_social_list_google_plus');
        $data['twitter'] = $this->config->get('tm_social_list_twitter');
        $data['pinterest'] = $this->config->get('tm_social_list_pinterest');
        $data['instagram'] = $this->config->get('tm_social_list_instagram');
        $data['vimeo'] = $this->config->get('tm_social_list_vimeo');

        return $this->load->view('module/tm_social_list', $data);
    }
}