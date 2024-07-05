<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pdfview extends CI_Controller {
    function __construct()
    {
        parent::__construct();
        $this->load->model(['item_m', 'supplier_m', 'stock_m']);
    }
    public function index()
    {
        $data['stock'] = $this->stock_m->get()->result();
        $data['item'] = $this->item_m->get()->result();
        $data['supplier'] = $this->supplier_m->get()->result();
        // panggil library yang kita buat sebelumnya yang bernama pdfgenerator
        $this->load->library('pdfgenerator');
        
        // title dari pdf
        $this->data['title_pdf'] = 'Laporan Gudang Sepatu';
        
        // filename dari pdf ketika didownload
        $file_pdf = 'laporan_gudang_sepatu';
        // setting paper
        $paper = 'A4';
        //orientasi paper potrait / landscape
        $orientation = "portrait";
        
		$html = $this->load->view('stock_in/laporan_pdf',$this->data, true);	    
        
        // run dompdf
        $this->pdfgenerator->generate($html, $file_pdf,$paper,$orientation);
    }
}