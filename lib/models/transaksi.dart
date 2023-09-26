class transaksi {
  /*
  tipe
  1 -> pemasukan
  2 -> pengeluaran
  */
  int? id, type, nominal;
  String? keterangan, createdAt, updatedAt;

  transaksi(
      {this.id,
      this.type,
      this.nominal,
      this.keterangan,
      this.createdAt,
      this.updatedAt});

  factory transaksi.fromJson(Map<String, dynamic> json) {
    return transaksi(
        id: json['id'],
        type: json['type'],
        nominal: json['nominal'],
        keterangan: json['keterangan'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at']);
  }
}
