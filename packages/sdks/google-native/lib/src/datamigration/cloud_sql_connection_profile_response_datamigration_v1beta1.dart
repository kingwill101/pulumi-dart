// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_sql_settings_response_datamigration_v1beta1.dart';

/// Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
class CloudSqlConnectionProfileResponseDatamigrationV1beta1 {
  /// The Cloud SQL instance ID that this connection profile is associated with.
  final pulumi.Input<String> cloudSqlId;
  /// The Cloud SQL database instance's private IP.
  final pulumi.Input<String> privateIp;
  /// The Cloud SQL database instance's public IP.
  final pulumi.Input<String> publicIp;
  /// Immutable. Metadata used to create the destination Cloud SQL database.
  final pulumi.Input<CloudSqlSettingsResponseDatamigrationV1beta1> settings;

  /// Creates a new [CloudSqlConnectionProfileResponseDatamigrationV1beta1].
  /// [cloudSqlId] The Cloud SQL instance ID that this connection profile is associated with.
  /// [privateIp] The Cloud SQL database instance's private IP.
  /// [publicIp] The Cloud SQL database instance's public IP.
  /// [settings] Immutable. Metadata used to create the destination Cloud SQL database.
  CloudSqlConnectionProfileResponseDatamigrationV1beta1({
    required this.cloudSqlId,
    required this.privateIp,
    required this.publicIp,
    required this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlId': cloudSqlId,
      'privateIp': privateIp,
      'publicIp': publicIp,
      'settings': pulumi.Input.mapInputValue<CloudSqlSettingsResponseDatamigrationV1beta1, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory CloudSqlConnectionProfileResponseDatamigrationV1beta1.fromMap(Map<String, dynamic> map) {
    return CloudSqlConnectionProfileResponseDatamigrationV1beta1(
      cloudSqlId: (map['cloudSqlId'] as String).input(),
      privateIp: (map['privateIp'] as String).input(),
      publicIp: (map['publicIp'] as String).input(),
      settings: (CloudSqlSettingsResponseDatamigrationV1beta1.fromMap((map['settings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

