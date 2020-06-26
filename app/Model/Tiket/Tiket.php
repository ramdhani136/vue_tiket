<?php

namespace App\Model\Tiket;

use Illuminate\Database\Eloquent\Model;
use App\Model\Categori\Categori;
use App\Model\Transaksi\Transaksi;



class Tiket extends Model
{

    protected $guarded=[];

    public function categori(){
        return $this->belongsTo(Categori::class,'id_kategori','id');
    }

    public function transaksi(){
        return $this->hasMany(transaksi::class,'id_tiket','id');
    }
}
