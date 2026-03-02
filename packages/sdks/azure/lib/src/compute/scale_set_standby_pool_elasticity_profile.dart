// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScaleSetStandbyPoolElasticityProfile {
  /// Specifies the maximum number of virtual machines in the standby pool.
  final pulumi.Input<int> maxReadyCapacity;
  /// Specifies the desired minimum number of virtual machines in the standby pool.
  ///
  /// > **Note:** `min_ready_capacity` cannot exceed `max_ready_capacity`.
  final pulumi.Input<int> minReadyCapacity;

  /// Creates a new [ScaleSetStandbyPoolElasticityProfile].
  /// [maxReadyCapacity] Specifies the maximum number of virtual machines in the standby pool.
  /// [minReadyCapacity] Specifies the desired minimum number of virtual machines in the standby pool.
  ScaleSetStandbyPoolElasticityProfile({
    required this.maxReadyCapacity,
    required this.minReadyCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReadyCapacity': maxReadyCapacity,
      'minReadyCapacity': minReadyCapacity,
    };
  }

  factory ScaleSetStandbyPoolElasticityProfile.fromMap(Map<String, dynamic> map) {
    return ScaleSetStandbyPoolElasticityProfile(
      maxReadyCapacity: (map['maxReadyCapacity'] as int).input(),
      minReadyCapacity: (map['minReadyCapacity'] as int).input(),
    );
  }
}

