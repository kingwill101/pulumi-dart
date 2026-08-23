// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScaleSetStandbyPoolElasticityProfile {
  /// Specifies the maximum number of virtual machines in the standby pool.
  final pulumi.Input<int> maxReadyCapacity;
  /// Specifies the desired minimum number of virtual machines in the standby pool.
  ///
  /// &gt; **Note:** `minReadyCapacity` cannot exceed `maxReadyCapacity`.
  final pulumi.Input<int> minReadyCapacity;

  /// Creates a new [ScaleSetStandbyPoolElasticityProfile].
  /// [maxReadyCapacity] Specifies the maximum number of virtual machines in the standby pool.
  /// [minReadyCapacity] Specifies the desired minimum number of virtual machines in the standby pool.
  const ScaleSetStandbyPoolElasticityProfile({
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
      maxReadyCapacity: pulumi.Input.fromValue(map['maxReadyCapacity'] as int),
      minReadyCapacity: pulumi.Input.fromValue(map['minReadyCapacity'] as int),
    );
  }
}
