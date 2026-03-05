// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GenericServiceTelemetry {
  /// The full name of the resource that defines this service.
  /// Formatted as described in
  /// https://cloud.google.com/apis/design/resource_names.
  final pulumi.Input<String>? resourceName;

  /// Creates a new [GenericServiceTelemetry].
  /// [resourceName] The full name of the resource that defines this service.
  GenericServiceTelemetry({
    this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceName': ?resourceName,
    };
  }

  factory GenericServiceTelemetry.fromMap(Map<String, dynamic> map) {
    return GenericServiceTelemetry(
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

