// ignore_for_file: unused_element, unnecessary_cast

import 'database_dump_database_type_metastore_v1alpha.dart';
import 'database_dump_type_metastore_v1alpha.dart';

/// A specification of the location of and metadata about a database dump from a relational database management system.
class DatabaseDumpMetastoreV1alpha {
  /// The type of the database.
  final DatabaseDumpDatabaseTypeMetastoreV1alpha? databaseType;
  /// A Cloud Storage object or folder URI that specifies the source from which to import metadata. It must begin with gs://.
  final String? gcsUri;
  /// The name of the source database.
  final String? sourceDatabase;
  /// Optional. The type of the database dump. If unspecified, defaults to MYSQL.
  final DatabaseDumpTypeMetastoreV1alpha? type;

  /// Creates a new [DatabaseDumpMetastoreV1alpha].
  /// [databaseType] The type of the database.
  /// [gcsUri] A Cloud Storage object or folder URI that specifies the source from which to import metadata. It must begin with gs://.
  /// [sourceDatabase] The name of the source database.
  /// [type] Optional. The type of the database dump. If unspecified, defaults to MYSQL.
  DatabaseDumpMetastoreV1alpha({
    this.databaseType,
    this.gcsUri,
    this.sourceDatabase,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseType': ?databaseType == null ? null : databaseType!.value,
      'gcsUri': ?gcsUri,
      'sourceDatabase': ?sourceDatabase,
      'type': ?type == null ? null : type!.value,
    };
  }

  factory DatabaseDumpMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return DatabaseDumpMetastoreV1alpha(
      databaseType: map['databaseType'] == null ? null : DatabaseDumpDatabaseTypeMetastoreV1alpha.fromValue(map['databaseType'] as String),
      gcsUri: map['gcsUri'] == null ? null : map['gcsUri'] as String,
      sourceDatabase: map['sourceDatabase'] == null ? null : map['sourceDatabase'] as String,
      type: map['type'] == null ? null : DatabaseDumpTypeMetastoreV1alpha.fromValue(map['type'] as String),
    );
  }
}

