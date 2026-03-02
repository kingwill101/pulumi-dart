// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout {
  /// (Optional)
  final pulumi.Input<int>? nanos;
  /// (Optional)
  final pulumi.Input<int>? seconds;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout].
  /// [nanos] (Optional)
  /// [seconds] (Optional)
  RestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout({
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nanos': ?nanos,
      'seconds': ?seconds,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout(
      nanos: map['nanos'] == null ? null : (map['nanos'] as int).input(),
      seconds: map['seconds'] == null ? null : (map['seconds'] as int).input(),
    );
  }
}

