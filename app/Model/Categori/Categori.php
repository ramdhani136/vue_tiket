<?php

namespace App\Model\Categori;
Use App\Model\Tiket\Tiket;

use Illuminate\Database\Eloquent\Model;

class Categori extends Model
{
    protected $guarded=[];
    public function tiket(){
        return $this->hasMany(Tiket::class,'id_kategori','id');
    }
}
