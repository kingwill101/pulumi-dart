// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Endpoint config for this cluster
class EndpointConfig {
  /// Optional. If true, enable http access to specific ports on the cluster from external sources. Defaults to false.
  final pulumi.Input<bool>? enableHttpPortAccess;

  /// Creates a new [EndpointConfig].
  /// [enableHttpPortAccess] Optional. If true, enable http access to specific ports on the cluster from external sources. Defaults to false.
  EndpointConfig({
    this.enableHttpPortAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableHttpPortAccess': ?enableHttpPortAccess,
    };
  }

  factory EndpointConfig.fromMap(Map<String, dynamic> map) {
    return EndpointConfig(
      enableHttpPortAccess: map['enableHttpPortAccess'] == null ? null : (map['enableHttpPortAccess']! as bool).input(),
    );
  }
}

