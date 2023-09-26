import 'dart:io';

import 'package:lsp/models/transaksi.dart';
import 'package:lsp/models/user.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseInstance {
  final String databaseName = "buku_kas.db";
  final int databaseVersion = 2;

  // Atribut di Model Transaksi
  final String namaTabel = 'transaksi';
  final String id = 'id';
  final String type = 'type';
  final String nominal = 'nominal';
  final String keterangan = 'keterangan';
  final String createdAt = 'created_at';
  final String updatedAt = 'updated_at';

  // Atribut di Model LOGIN
  final String namaTabel1 = 'login';
  final String id1 = 'id';
  final String username = 'username';
  final String password = 'password';

  Database? _database;
  Future<Database> database() async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    Directory databaseDirectory = await getApplicationDocumentsDirectory();
    String path = join(databaseDirectory.path, databaseName);
    print('database init');
    return openDatabase(path, version: databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE ${namaTabel} ($id INTEGER PRIMARY KEY, $keterangan TEXT NULL, $type INTEGER, $nominal INTEGER, $createdAt TEXT NULL, $updatedAt TEXT NULL)'
        'CREATE TABLE ${namaTabel1} ($id1 INTEGER PRIMARY KEY, $username TEXT NULL, $password TEXT NULL)');
  }

  Future<List<transaksi>> getAll() async {
    final data = await _database!.query(namaTabel);
    List<transaksi> result = data.map((e) => transaksi.fromJson(e)).toList();
    return result;
  }

  Future<int> insert(Map<String, dynamic> row) async {
    final query = await _database!.insert(namaTabel, row);
    return query;
  }
}
