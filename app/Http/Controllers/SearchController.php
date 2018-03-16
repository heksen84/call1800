<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Numbers;
use Illuminate\Support\Facades\Input;
class SearchController extends Controller
{
    public function Search(Request $request) {
	return view('search')->with("search_string", $request->company);
    }

    public function getOrgList()
    {
      $attachment_ids = array();

      for ($i=0;$i<5;$i++) {
        $attachment_ids[] = array(
          "number" => $i,
          "company_name" => "123",
          "business_info" => "123",
          "website" => "123",
          "location" => "123",
          "categories" => "123");
        }
        $attachment_ids = json_encode($attachment_ids);
        return $attachment_ids;
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
