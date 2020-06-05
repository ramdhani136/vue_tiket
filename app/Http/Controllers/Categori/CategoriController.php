<?php

namespace App\Http\Controllers\Categori;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Categori\Categori;
use App\Http\Resources\CategoriResource;
use Symfony\Component\HttpFoundation\Response;

class CategoriController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return CategoriResource::collection(Categori::latest()->get());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $categori = Categori::create($request->all());
        return response(new CategoriResource($categori), Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Categori $categori)
    {
        return new CategoriResource($categori);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request ,Categori $categori)
    {
        $categori->update($request->all());
        return response('update',Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Categori $categori)
    {
        $categori->delete();
        return response('deleted',response::HTTP_OK);
    }
}
