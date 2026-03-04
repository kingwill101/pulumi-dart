// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIstioCanonicalServiceTelemetry {
  /// The full name of the resource that defines this service.
  /// Formatted as described in
  /// https://cloud.google.com/apis/design/resource_names.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetIstioCanonicalServiceTelemetry].
  /// [resourceName] The full name of the resource that defines this service.
  GetIstioCanonicalServiceTelemetry({required this.resourceName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceName': resourceName};
  }

  factory GetIstioCanonicalServiceTelemetry.fromMap(Map<String, dynamic> map) {
    return GetIstioCanonicalServiceTelemetry(
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
