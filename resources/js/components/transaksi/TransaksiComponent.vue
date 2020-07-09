<template>
    <div class="container">
        <v-form @submit.prevent="savetransaksi">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header"><i class="fas fa-money-check-alt"> TRANSAKSI TIKET </i></div>
                    <div class="card-body">
                    <h3><i class="fab fa-wpforms"> Form Transaksi </i></h3>
                    <table class="table table-bordered">
                            <tr><td>
                                <div class="col-md-12">
                                    <label>Name Tiket</label>
                                        <v-flex xs12 sm12 d-flex>
                                        <select class="form-control" v-model="form.id_tiket">
                                            <option v-for="tikets in tiket" :value="tikets.id" :key="tikets">
                                                {{tikets.name_tiket}}
                                            </option>
                                        </select>
                                        </v-flex>
                                </div>
                            </td></tr>
                        <tr><td>
                                <div class="col-md-12">
                                    <label>Qty</label>
                                        <v-flex xs12 sm12 d-flex>
                                            <input  type="number" class="form-control" v-model="form.qty">
                                        </v-flex>
                                </div>
                            </td></tr>
                            <tr><td>
                                <v-btn color="primary" type="submit" dark> Save
                                </v-btn>
                                <v-btn color="primary" @click="finish()" dark> Finish
                                </v-btn>
                                    <v-btn @click="print()" color="indigo" dark>Print
                                    </v-btn>
                            </td></tr>
                    </table>
                        <div class="card-header">
                            <i class="fab fa-wpforms"> Detail Transaksi </i>
                        </div>
                        <table class="table table-bordered">
                            <th>
                            <i class="fas fa-file-signature">  Nama Tiket </i>
                            </th>
                            <th>
                                <i class="fab fa-wolf-pack-battalion"> Qty </i></th>
                        <th>
                            <i class="fas fa-hand-holding-usd"> Harga Tiket </i>
                        </th>
                        <th>
                            <i class="fas fa-dollar-sign"> Subtotal  </i></th>
                            <th><i class="fas fa-ban"> Cancel </i>
                            </th>
                        <tr v-for="trx in transaksi" :key="trx.id">
                                <td>{{trx.name_tiket}}</td>
                                <td>{{trx.qty}}</td>
                                <td>{{trx.harga_tiket}}</td>
                                <td>{{trx.total}}</td>
                                <td>
                                    <button @click="destroy(trx.id)" class="btn btn-danger">Hapus</button>
                                </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    </v-form>
</div>
</template>

<script>
export default { 
    data(){
        return{
            form:{
                id_tiket:null,
                qty:null,
            },
            tiket:{},
            transaksi:{}
        }
    },
    created(){
        axios.get("/api/tiket")
        .then(res=>this.tiket=res.data.data)
    },
    mounted(){
        this.getTransaksi()
    },
    methods:{
        savetransaksi(){
            axios.post("/api/transaksi/",this.form)
            .then((response)=>{
                this.form.qty="",
                this.form.id_tiket=""
                this.getTransaksi()
            });
        },
        getTransaksi(){
            axios.get("/api/transaksi")
            .then(res=>this.transaksi=res.data.data)
        },
        destroy(id){
            let keputusan=confirm("yakin ingin menghapus tiket ini?")
            if(keputusan==true){
                axios.delete(`/api/transaksi/${id}+`)
                this.getTransaksi()
            }
        },
        finish(){
            axios.get("/api/transaksi/update")
            .then((response)=>{
                this.getTransaksi()
            });
        }
    }
}
</script>

<style>

</style>