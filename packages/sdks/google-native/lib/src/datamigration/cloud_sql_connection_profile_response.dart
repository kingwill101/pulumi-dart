// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_sql_settings_response.dart';

/// Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
class CloudSqlConnectionProfileResponse {
  /// The Cloud SQL database instance's additional (outgoing) public IP. Used when the Cloud SQL database availability type is REGIONAL (i.e. multiple zones / highly available).
  final pulumi.Input<String> additionalPublicIp;
  /// The Cloud SQL instance ID that this connection profile is associated with.
  final pulumi.Input<String> cloudSqlId;
  /// The Cloud SQL database instance's private IP.
  final pulumi.Input<String> privateIp;
  /// The Cloud SQL database instance's public IP.
  final pulumi.Input<String> publicIp;
  /// Immutable. Metadata used to create the destination Cloud SQL database.
  final pulumi.Input<CloudSqlSettingsResponse> settings;

  /// Creates a new [CloudSqlConnectionProfileResponse].
  /// [additionalPublicIp] The Cloud SQL database instance's additional (outgoing) public IP. Used when the Cloud SQL database availability type is REGIONAL (i.e. multiple zones / highly available).
  /// [cloudSqlId] The Cloud SQL instance ID that this connection profile is associated with.
  /// [privateIp] The Cloud SQL database instance's private IP.
  /// [publicIp] The Cloud SQL database instance's public IP.
  /// [settings] Immutable. Metadata used to create the destination Cloud SQL database.
  CloudSqlConnectionProfileResponse({
    required this.additionalPublicIp,
    required this.cloudSqlId,
    required this.privateIp,
    required this.publicIp,
    required this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalPublicIp': additionalPublicIp,
      'cloudSqlId': cloudSqlId,
      'privateIp': privateIp,
      'publicIp': publicIp,
      'settings': pulumi.Input.mapInputValue<CloudSqlSettingsResponse, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory CloudSqlConnectionProfileResponse.fromMap(Map<String, dynamic> map) {
    return CloudSqlConnectionProfileResponse(
      additionalPublicIp: (map['additionalPublicIp'] as String).input(),
      cloudSqlId: (map['cloudSqlId'] as String).input(),
      privateIp: (map['privateIp'] as String).input(),
      publicIp: (map['publicIp'] as String).input(),
      settings: (CloudSqlSettingsResponse.fromMap((map['settings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

