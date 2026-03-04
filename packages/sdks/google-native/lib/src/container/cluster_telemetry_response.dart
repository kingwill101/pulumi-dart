// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Telemetry integration for the cluster.
class ClusterTelemetryResponse {
  /// Type of the integration.
  final pulumi.Input<String> type;

  /// Creates a new [ClusterTelemetryResponse].
  /// [type] Type of the integration.
  ClusterTelemetryResponse({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory ClusterTelemetryResponse.fromMap(Map<String, dynamic> map) {
    return ClusterTelemetryResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
