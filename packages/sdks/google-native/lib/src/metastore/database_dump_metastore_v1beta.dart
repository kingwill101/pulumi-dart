// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_dump_database_type_metastore_v1beta.dart';
import 'database_dump_type_metastore_v1beta.dart';

/// A specification of the location of and metadata about a database dump from a relational database management system.
class DatabaseDumpMetastoreV1beta {
  /// The type of the database.
  final pulumi.Input<DatabaseDumpDatabaseTypeMetastoreV1beta>? databaseType;
  /// A Cloud Storage object or folder URI that specifies the source from which to import metadata. It must begin with gs://.
  final pulumi.Input<String>? gcsUri;
  /// The name of the source database.
  final pulumi.Input<String>? sourceDatabase;
  /// Optional. The type of the database dump. If unspecified, defaults to MYSQL.
  final pulumi.Input<DatabaseDumpTypeMetastoreV1beta>? type;

  /// Creates a new [DatabaseDumpMetastoreV1beta].
  /// [databaseType] The type of the database.
  /// [gcsUri] A Cloud Storage object or folder URI that specifies the source from which to import metadata. It must begin with gs://.
  /// [sourceDatabase] The name of the source database.
  /// [type] Optional. The type of the database dump. If unspecified, defaults to MYSQL.
  DatabaseDumpMetastoreV1beta({
    this.databaseType,
    this.gcsUri,
    this.sourceDatabase,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseType': ?pulumi.Input.mapOptionalInputValue<DatabaseDumpDatabaseTypeMetastoreV1beta, String>(databaseType, (value) => value.value),
      'gcsUri': ?gcsUri,
      'sourceDatabase': ?sourceDatabase,
      'type': ?pulumi.Input.mapOptionalInputValue<DatabaseDumpTypeMetastoreV1beta, String>(type, (value) => value.value),
    };
  }

  factory DatabaseDumpMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return DatabaseDumpMetastoreV1beta(
      databaseType: map['databaseType'] == null ? null : (DatabaseDumpDatabaseTypeMetastoreV1beta.fromValue(map['databaseType'] as String)).input(),
      gcsUri: map['gcsUri'] == null ? null : (map['gcsUri'] as String).input(),
      sourceDatabase: map['sourceDatabase'] == null ? null : (map['sourceDatabase'] as String).input(),
      type: map['type'] == null ? null : (DatabaseDumpTypeMetastoreV1beta.fromValue(map['type'] as String)).input(),
    );
  }
}

