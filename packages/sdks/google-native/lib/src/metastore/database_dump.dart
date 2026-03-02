// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_dump_database_type.dart';
import 'database_dump_type.dart';

/// A specification of the location of and metadata about a database dump from a relational database management system.
class DatabaseDump {
  /// The type of the database.
  final pulumi.Input<DatabaseDumpDatabaseType>? databaseType;
  /// A Cloud Storage object or folder URI that specifies the source from which to import metadata. It must begin with gs://.
  final pulumi.Input<String>? gcsUri;
  /// The name of the source database.
  final pulumi.Input<String>? sourceDatabase;
  /// Optional. The type of the database dump. If unspecified, defaults to MYSQL.
  final pulumi.Input<DatabaseDumpType>? type;

  /// Creates a new [DatabaseDump].
  /// [databaseType] The type of the database.
  /// [gcsUri] A Cloud Storage object or folder URI that specifies the source from which to import metadata. It must begin with gs://.
  /// [sourceDatabase] The name of the source database.
  /// [type] Optional. The type of the database dump. If unspecified, defaults to MYSQL.
  DatabaseDump({
    this.databaseType,
    this.gcsUri,
    this.sourceDatabase,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseType': ?pulumi.Input.mapOptionalInputValue<DatabaseDumpDatabaseType, String>(databaseType, (value) => value.value),
      'gcsUri': ?gcsUri,
      'sourceDatabase': ?sourceDatabase,
      'type': ?pulumi.Input.mapOptionalInputValue<DatabaseDumpType, String>(type, (value) => value.value),
    };
  }

  factory DatabaseDump.fromMap(Map<String, dynamic> map) {
    return DatabaseDump(
      databaseType: map['databaseType'] == null ? null : (DatabaseDumpDatabaseType.fromValue(map['databaseType']! as String)).input(),
      gcsUri: map['gcsUri'] == null ? null : (map['gcsUri']! as String).input(),
      sourceDatabase: map['sourceDatabase'] == null ? null : (map['sourceDatabase']! as String).input(),
      type: map['type'] == null ? null : (DatabaseDumpType.fromValue(map['type']! as String)).input(),
    );
  }
}

