class user {
  /*
  tipe
  1 -> pemasukan
  2 -> pengeluaran
  */
  int? id, type;
  String? username, password, name;

  user({
    this.id,
    this.type,
    this.username,
    this.password,
    this.name,
  });

  factory user.fromJson(Map<String, dynamic> json) {
    return user(
      id: json['id'],
      type: json['type'],
      username: json['username'],
      password: json['password'],
      name: json['name'],
    );
  }
}
