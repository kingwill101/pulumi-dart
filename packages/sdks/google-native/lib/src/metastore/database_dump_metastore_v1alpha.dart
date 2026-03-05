// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_dump_database_type_metastore_v1alpha.dart';
import 'database_dump_type_metastore_v1alpha.dart';

/// A specification of the location of and metadata about a database dump from a relational database management system.
class DatabaseDumpMetastoreV1alpha {
  /// The type of the database.
  final pulumi.Input<DatabaseDumpDatabaseTypeMetastoreV1alpha>? databaseType;
  /// A Cloud Storage object or folder URI that specifies the source from which to import metadata. It must begin with gs://.
  final pulumi.Input<String>? gcsUri;
  /// The name of the source database.
  final pulumi.Input<String>? sourceDatabase;
  /// Optional. The type of the database dump. If unspecified, defaults to MYSQL.
  final pulumi.Input<DatabaseDumpTypeMetastoreV1alpha>? type;

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
      'databaseType': ?pulumi.Input.mapOptionalInputValue<DatabaseDumpDatabaseTypeMetastoreV1alpha, String>(databaseType, (value) => value.wireValue),
      'gcsUri': ?gcsUri,
      'sourceDatabase': ?sourceDatabase,
      'type': ?pulumi.Input.mapOptionalInputValue<DatabaseDumpTypeMetastoreV1alpha, String>(type, (value) => value.wireValue),
    };
  }

  factory DatabaseDumpMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return DatabaseDumpMetastoreV1alpha(
      databaseType: (() { final guardedValue = map['databaseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseDumpDatabaseTypeMetastoreV1alpha.fromValue(guardedValue as String)); })(),
      gcsUri: (() { final guardedValue = map['gcsUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDatabase: (() { final guardedValue = map['sourceDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseDumpTypeMetastoreV1alpha.fromValue(guardedValue as String)); })(),
    );
  }
}

