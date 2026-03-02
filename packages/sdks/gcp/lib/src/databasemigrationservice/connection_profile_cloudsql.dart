// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_cloudsql_settings.dart';

class ConnectionProfileCloudsql {
  /// (Output)
  /// Output only. The Cloud SQL instance ID that this connection profile is associated with.
  final pulumi.Input<String>? cloudSqlId;
  /// (Output)
  /// Output only. The Cloud SQL database instance's private IP.
  final pulumi.Input<String>? privateIp;
  /// (Output)
  /// Output only. The Cloud SQL database instance's public IP.
  final pulumi.Input<String>? publicIp;
  /// Immutable. Metadata used to create the destination Cloud SQL database.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileCloudsqlSettings>? settings;

  /// Creates a new [ConnectionProfileCloudsql].
  /// [cloudSqlId] (Output)
  /// [privateIp] (Output)
  /// [publicIp] (Output)
  /// [settings] Immutable. Metadata used to create the destination Cloud SQL database.
  ConnectionProfileCloudsql({
    this.cloudSqlId,
    this.privateIp,
    this.publicIp,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlId': ?cloudSqlId,
      'privateIp': ?privateIp,
      'publicIp': ?publicIp,
      'settings': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileCloudsqlSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory ConnectionProfileCloudsql.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileCloudsql(
      cloudSqlId: map['cloudSqlId'] == null ? null : (map['cloudSqlId'] as String).input(),
      privateIp: map['privateIp'] == null ? null : (map['privateIp'] as String).input(),
      publicIp: map['publicIp'] == null ? null : (map['publicIp'] as String).input(),
      settings: map['settings'] == null ? null : (ConnectionProfileCloudsqlSettings.fromMap((map['settings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

