<template>
    <div id="container">
        <router-link to="/categori/create" class="btn btn-success margin-home my-3 bord">
            + Tambah Categori
        </router-link>
        <div class="form-group float-right mt-2 col-3">
            <input type="text" class="form-control col-12" v-model="search" placeholder="Search">
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
                    
                    <router-link :to="{name:'edit_categori',params:{id:categori.id}}" class="btn btn-primary">
                    Edit
                    </router-link>

                    <button type="button" @click="destroy(categori.id)" class="btn btn-danger">Hapus</button>
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
                categories:[],
                search:''
            }
        },
        methods:{
            getCategory(){
                axios("/api/categori")
                .then(res=>this.categories=res.data.data)
                .catch(res=>console.log(rror.res.data.data))
            },
            destroy(id){
                let keputusan=confirm('Apakah anda yakin ingin menghapus kategori ini?')
                if(keputusan==true){
                    axios.delete(`/api/categori/${id}+`)
                    .then(res=>this.getCategory())
                }
            }
        }  
    }
</script>