// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesConfidentialInstanceConfig {
  /// Optional. Defines whether the instance should have confidential compute enabled.
  final pulumi.Input<bool>? enableConfidentialCompute;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesConfidentialInstanceConfig].
  /// [enableConfidentialCompute] Optional. Defines whether the instance should have confidential compute enabled.
  RestoreWorkloadComputeInstanceRestorePropertiesConfidentialInstanceConfig({
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesConfidentialInstanceConfig(
      enableConfidentialCompute: map['enableConfidentialCompute'] == null ? null : (map['enableConfidentialCompute']! as bool).input(),
    );
  }
}

