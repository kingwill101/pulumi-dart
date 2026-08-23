// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionConfigurationAsset {
  /// The name of the database.
  final pulumi.Input<String>? database;
  /// The full resource name of the Google Cloud resource.
  /// For AlloyDB, this is in the format of
  /// `//alloydb.googleapis.com/projects/{project}/locations/{region}/clusters/{cluster}/instances/{instance}`.
  final pulumi.Input<String>? googleCloudResource;

  /// Creates a new [ConnectionConfigurationAsset].
  /// [database] The name of the database.
  /// [googleCloudResource] The full resource name of the Google Cloud resource.
  const ConnectionConfigurationAsset({
    this.database,
    this.googleCloudResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'googleCloudResource': ?googleCloudResource,
    };
  }

  factory ConnectionConfigurationAsset.fromMap(Map<String, dynamic> map) {
    return ConnectionConfigurationAsset(
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      googleCloudResource: (() { final guardedValue = map['googleCloudResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
