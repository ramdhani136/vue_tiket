@extends('layouts.app')

@section('content')
<div class="container margin-home">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-defult">
                        <div class="card-body">
                            <router-view></router-view>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
