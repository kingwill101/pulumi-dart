// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_cloudsql_settings.dart';

class ConnectionProfileCloudsql {
  /// (Output)
  /// Output only. The Cloud SQL instance ID that this connection profile is associated with.
  final pulumi.Input<String?>? cloudSqlId;
  /// (Output)
  /// Output only. The Cloud SQL database instance's private IP.
  final pulumi.Input<String?>? privateIp;
  /// (Output)
  /// Output only. The Cloud SQL database instance's public IP.
  final pulumi.Input<String?>? publicIp;
  /// Immutable. Metadata used to create the destination Cloud SQL database.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileCloudsqlSettings?>? settings;

  /// Creates a new [ConnectionProfileCloudsql].
  /// [cloudSqlId] (Output)
  /// [privateIp] (Output)
  /// [publicIp] (Output)
  /// [settings] Immutable. Metadata used to create the destination Cloud SQL database.
  const ConnectionProfileCloudsql({
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
      cloudSqlId: (() { final guardedValue = map['cloudSqlId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIp: (() { final guardedValue = map['privateIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIp: (() { final guardedValue = map['publicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileCloudsqlSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
