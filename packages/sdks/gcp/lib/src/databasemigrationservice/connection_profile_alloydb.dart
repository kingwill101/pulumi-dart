// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_alloydb_settings.dart';

class ConnectionProfileAlloydb {
  /// Required. The AlloyDB cluster ID that this connection profile is associated with.
  final pulumi.Input<String> clusterId;
  /// Immutable. Metadata used to create the destination AlloyDB cluster.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileAlloydbSettings>? settings;

  /// Creates a new [ConnectionProfileAlloydb].
  /// [clusterId] Required. The AlloyDB cluster ID that this connection profile is associated with.
  /// [settings] Immutable. Metadata used to create the destination AlloyDB cluster.
  const ConnectionProfileAlloydb({
    required this.clusterId,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'settings': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileAlloydbSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory ConnectionProfileAlloydb.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileAlloydb(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileAlloydbSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

