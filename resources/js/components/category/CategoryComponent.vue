<template>
    <div id="container">
        <button type="button" class="btn btn-success my-3">+ Tambah Kategori</button>
        <div class="input-group">
            <input type="text" class="form-control">
        </div>
        <table class="table table-striped">
            <thead>
                <tr>
                <th scope="col-2">No</th>
                <th scope="col">Kategori</th>
                <th scope="col-2">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="(categori, index) in categories" :key="categori">
                    
                    
                <th scope="row">{{index+1}}</th>
                <td>{{categori.name_categori}}</td>
                <td>
                    <button type="button" class="btn btn-primary">Edit</button>
                    <button type="button" class="btn btn-danger">Hapus</button>
                </td>
                </tr>
            </tbody>
        </table>
        </div>
</template>

<script>
    export default {
        mounted(){
            this.getCategory()
        },
        data(){
            return{
                categories:[]
            }
        },
        methods:{
            getCategory(){
                axios("/api/categori")
                .then(res=>this.categories=res.data.data)
                .catch(res=>console.log(rror.res.data.data))
            }
        }  
    }
</script>