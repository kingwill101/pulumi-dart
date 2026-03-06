// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_telemetry_type.dart';

/// Telemetry integration for the cluster.
class ClusterTelemetry {
  /// Type of the integration.
  final pulumi.Input<ClusterTelemetryType>? type;

  /// Creates a new [ClusterTelemetry].
  /// [type] Type of the integration.
  const ClusterTelemetry({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<ClusterTelemetryType, String>(type, (value) => value.wireValue),
    };
  }

  factory ClusterTelemetry.fromMap(Map<String, dynamic> map) {
    return ClusterTelemetry(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterTelemetryType.fromValue(guardedValue as String)); })(),
    );
  }
}

