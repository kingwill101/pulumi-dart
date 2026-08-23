// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterClusterTelemetry {
  /// Type of the integration.
  final pulumi.Input<String> type;

  /// Creates a new [GetClusterClusterTelemetry].
  /// [type] Type of the integration.
  const GetClusterClusterTelemetry({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GetClusterClusterTelemetry.fromMap(Map<String, dynamic> map) {
    return GetClusterClusterTelemetry(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
