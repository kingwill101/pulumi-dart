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
  const RestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout({
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
      nanos: (() { final guardedValue = map['nanos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      seconds: (() { final guardedValue = map['seconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
