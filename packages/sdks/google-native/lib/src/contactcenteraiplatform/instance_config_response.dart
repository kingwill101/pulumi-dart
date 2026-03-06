// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message storing the instance configuration.
class InstanceConfigResponse {
  /// The instance size of this the instance configuration.
  final pulumi.Input<String> instanceSize;

  /// Creates a new [InstanceConfigResponse].
  /// [instanceSize] The instance size of this the instance configuration.
  const InstanceConfigResponse({
    required this.instanceSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSize': instanceSize,
    };
  }

  factory InstanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return InstanceConfigResponse(
      instanceSize: pulumi.Input.fromValue(map['instanceSize'] as String),
    );
  }
}

