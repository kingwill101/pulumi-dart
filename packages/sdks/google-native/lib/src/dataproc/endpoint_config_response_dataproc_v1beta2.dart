// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Endpoint config for this cluster
class EndpointConfigResponseDataprocV1beta2 {
  /// Optional. If true, enable http access to specific ports on the cluster from external sources. Defaults to false.
  final pulumi.Input<bool> enableHttpPortAccess;

  /// The map of port descriptions to URLs. Will only be populated if enable_http_port_access is true.
  final pulumi.Input<Map<String, String>> httpPorts;

  /// Creates a new [EndpointConfigResponseDataprocV1beta2].
  /// [enableHttpPortAccess] Optional. If true, enable http access to specific ports on the cluster from external sources. Defaults to false.
  /// [httpPorts] The map of port descriptions to URLs. Will only be populated if enable_http_port_access is true.
  EndpointConfigResponseDataprocV1beta2({
    required this.enableHttpPortAccess,
    required this.httpPorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableHttpPortAccess': enableHttpPortAccess,
      'httpPorts': httpPorts,
    };
  }

  factory EndpointConfigResponseDataprocV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointConfigResponseDataprocV1beta2(
      enableHttpPortAccess: pulumi.Input.fromValue(
        map['enableHttpPortAccess'] as bool,
      ),
      httpPorts: pulumi.Input.fromValue(
        (map['httpPorts'] as Map).cast<String, String>(),
      ),
    );
  }
}
