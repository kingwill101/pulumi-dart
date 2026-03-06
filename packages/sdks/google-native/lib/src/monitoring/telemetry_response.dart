// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for how to query telemetry on a Service.
class TelemetryResponse {
  /// The full name of the resource that defines this service. Formatted as described in https://cloud.google.com/apis/design/resource_names.
  final pulumi.Input<String> resourceName;

  /// Creates a new [TelemetryResponse].
  /// [resourceName] The full name of the resource that defines this service. Formatted as described in https://cloud.google.com/apis/design/resource_names.
  const TelemetryResponse({
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceName': resourceName,
    };
  }

  factory TelemetryResponse.fromMap(Map<String, dynamic> map) {
    return TelemetryResponse(
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

