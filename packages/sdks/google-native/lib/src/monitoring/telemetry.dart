// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for how to query telemetry on a Service.
class Telemetry {
  /// The full name of the resource that defines this service. Formatted as described in https://cloud.google.com/apis/design/resource_names.
  final pulumi.Input<String>? resourceName;

  /// Creates a new [Telemetry].
  /// [resourceName] The full name of the resource that defines this service. Formatted as described in https://cloud.google.com/apis/design/resource_names.
  Telemetry({
    this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceName': ?resourceName,
    };
  }

  factory Telemetry.fromMap(Map<String, dynamic> map) {
    return Telemetry(
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

