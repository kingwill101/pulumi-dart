// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Endpoint config for this cluster
class EndpointConfigDataprocV1beta2 {
  /// Optional. If true, enable http access to specific ports on the cluster from external sources. Defaults to false.
  final pulumi.Input<bool>? enableHttpPortAccess;

  /// Creates a new [EndpointConfigDataprocV1beta2].
  /// [enableHttpPortAccess] Optional. If true, enable http access to specific ports on the cluster from external sources. Defaults to false.
  EndpointConfigDataprocV1beta2({
    this.enableHttpPortAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableHttpPortAccess': ?enableHttpPortAccess,
    };
  }

  factory EndpointConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return EndpointConfigDataprocV1beta2(
      enableHttpPortAccess: map['enableHttpPortAccess'] == null ? null : (map['enableHttpPortAccess']! as bool).input(),
    );
  }
}

