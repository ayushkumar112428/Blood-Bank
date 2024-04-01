import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;

class SQLHelperBloodDonor {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE BloodDonor(
    `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
    `Group` TEXT NOT NULL , 
    `DonorName` TEXT NOT NULL , 
    `DonorPhoneNumber` TEXT NOT NULL , 
    `DonorProfession` TEXT NOT NULL , 
    `DonorDisease` TEXT NOT NULL , 
    `DonorAddress` TEXT NOT NULL , 
    `DonorAadharNumber` TEXT NOT NULL , 
    `BloodReceivesHospital` TEXT NOT NULL , 
    `HospitalLocation` TEXT NOT NULL , 
    `DonorWeight` INTEGER NOT NULL , 
    `DonorAge` INTEGER NOT NULL , 
    `WhoManyTimeDonate` INTEGER NOT NULL
    )""");
  }

  static Future<sql.Database> db() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(
      path.join(dbPath, 'BloodDonorDB.db'),
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTables(database);
      },
    );
  }

  static Future<void> createItem(Map<String, dynamic> donorData) async {
    final db = await SQLHelperBloodDonor.db();
    await db.insert('BloodDonor', donorData,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
  }

  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await SQLHelperBloodDonor.db();
    return db.query('BloodDonor');
  }

  static Future<Map<String, dynamic>> getItem(int id) async {
    final db = await SQLHelperBloodDonor.db();
    final List<Map<String, dynamic>> maps = await db.query('BloodDonor',
        where: 'id = ?',
        whereArgs: [id],
        limit: 1);
    // if (maps.isNotEmpty) {
    //   return maps.first;
    // }
    return maps.first;
  }

  static Future<void> updateItem(Map<String, dynamic> item) async {
    final db = await SQLHelperBloodDonor.db();
    await db.update(
      'BloodDonor',
      item,
      where: 'id = ?',
      whereArgs: [item['id']],
    );
  }

  static Future<void> deleteItem(int id) async {
    final db = await SQLHelperBloodDonor.db();
    try {
      await db.delete(
        'BloodDonor',
        where: 'id = ?',
        whereArgs: [id],
      );
    } catch (err) {
      debugPrint("Something went wrong when deleting an item: $err");
    }
  }
}
