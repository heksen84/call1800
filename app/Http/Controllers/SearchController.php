<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\Http\Controllers\Controller;
use Vinelab\Http\Client as HttpClient;
use App\Numbers;

class SearchController extends Controller
{
    public function Search(Request $request) {
	return view('search')->with("search_string", $request->company);
    }

    public function getOrgList()
    {
	    $jsonurl = "http://151.80.37.10:5000/tollfreenumber?query=google";
	    $json = file_get_contents($jsonurl);

	    if ($json) {
		$dec = json_decode(str_replace(array("\r", "\n"), '', $json), true);
		if (!$dec) return "[ json_decode ]: Bad json!";
		for($i=0;$i<count($dec);$i++){
        		$attachment_ids[] = array(
          		"number" => $dec[$i]["Number: "],
          		"company_name" => $dec[$i]["Company Name: "],
          		"business_info" => $dec[$i]["Business Info: "],
          		"website" => "site-".$i,
          		"location" => "123",
          		"categories" => "123");
        		}
                 	return $attachment_ids;
		}		
		
       //return Numbers::all()->toJson();
	
    }

    public function create() {
    }

    public function store(Request $request) {
    }

    public function show($id) {
    }

    public function edit($id) {
    }

    public function update(Request $request, $id) {
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
