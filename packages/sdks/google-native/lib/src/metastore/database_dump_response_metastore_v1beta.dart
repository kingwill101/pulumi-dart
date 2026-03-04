// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A specification of the location of and metadata about a database dump from a relational database management system.
class DatabaseDumpResponseMetastoreV1beta {
  /// The type of the database.
  final pulumi.Input<String> databaseType;

  /// A Cloud Storage object or folder URI that specifies the source from which to import metadata. It must begin with gs://.
  final pulumi.Input<String> gcsUri;

  /// The name of the source database.
  final pulumi.Input<String> sourceDatabase;

  /// Optional. The type of the database dump. If unspecified, defaults to MYSQL.
  final pulumi.Input<String> type;

  /// Creates a new [DatabaseDumpResponseMetastoreV1beta].
  /// [databaseType] The type of the database.
  /// [gcsUri] A Cloud Storage object or folder URI that specifies the source from which to import metadata. It must begin with gs://.
  /// [sourceDatabase] The name of the source database.
  /// [type] Optional. The type of the database dump. If unspecified, defaults to MYSQL.
  DatabaseDumpResponseMetastoreV1beta({
    required this.databaseType,
    required this.gcsUri,
    required this.sourceDatabase,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseType': databaseType,
      'gcsUri': gcsUri,
      'sourceDatabase': sourceDatabase,
      'type': type,
    };
  }

  factory DatabaseDumpResponseMetastoreV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseDumpResponseMetastoreV1beta(
      databaseType: pulumi.Input.fromValue(map['databaseType'] as String),
      gcsUri: pulumi.Input.fromValue(map['gcsUri'] as String),
      sourceDatabase: pulumi.Input.fromValue(map['sourceDatabase'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
