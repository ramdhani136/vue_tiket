<template>
    <div id="container">
        <router-link to="/categori/create" class="btn btn-success margin-home my-3">
            + Tambah Categori
        </router-link>
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
                    
                    <router-link :to="{name:'edit_categori',params:{id:categori.id}}" class="btn btn-primary">
                    Edit
                    </router-link>

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