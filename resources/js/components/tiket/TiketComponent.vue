<template>
    <div id="container">
        <router-link to="/tiket/create" class="btn btn-success margin-home my-3 bord">
            + Tambah Tiket
        </router-link>
        <table class="table table-striped">
            <thead>
                <tr>
                <th scope="col-2">No</th>
                <th scope="col">Nama Tiket</th>
                <th scope="col">Harga</th>
                <th scope="col">Kategori</th>
                <th scope="col">Jumlah</th>
                <th scope="col-2">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="(tk, index) in tiket" :key="tk">
                    
                    
                <th scope="row">{{index+1}}</th>
                <td>{{tk.name_tiket}}</td>
                <td>{{tk.harga_tiket}}</td>
                <td>{{tk.name_categori}}</td>
                <td>{{tk.jumlah_tiket}}</td>
                <td>
                    
                    <router-link :to="{name:'edit_tiket',params:{id:tk.id}}" class="btn btn-primary">
                    Edit
                    </router-link>

                    <button type="button" @click="destroy(tk.id)" class="btn btn-danger">Hapus</button>
                </td>
                </tr>
            </tbody>
        </table>
        </div>
</template>

<script>
export default {
    data(){
        return{
            tiket:[],
        }
    },
    created(){
        this.getTiket()
    },
    methods:{
        getTiket(){
            axios.get("api/tiket")
            .then(res=>this.tiket=res.data.data)
        },
        destroy(id){
            let keputusan=confirm('Apakah anda yakin ingin menghapus Tiket ini?')
            if(keputusan==true){
                axios.delete(`/api/tiket/${id}+`)
                this.getTiket()
            }
        }
    }
}
</script>