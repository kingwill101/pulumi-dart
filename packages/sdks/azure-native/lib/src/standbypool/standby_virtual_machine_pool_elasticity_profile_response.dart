// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the elasticity profile.
class StandbyVirtualMachinePoolElasticityProfileResponse {
  /// Specifies the maximum number of virtual machines in the standby virtual machine pool.
  final pulumi.Input<double> maxReadyCapacity;

  /// Specifies the desired minimum number of virtual machines in the standby virtual machine pool. MinReadyCapacity cannot exceed MaxReadyCapacity.
  final pulumi.Input<double>? minReadyCapacity;

  /// Creates a new [StandbyVirtualMachinePoolElasticityProfileResponse].
  /// [maxReadyCapacity] Specifies the maximum number of virtual machines in the standby virtual machine pool.
  /// [minReadyCapacity] Specifies the desired minimum number of virtual machines in the standby virtual machine pool. MinReadyCapacity cannot exceed MaxReadyCapacity.
  StandbyVirtualMachinePoolElasticityProfileResponse({
    required this.maxReadyCapacity,
    this.minReadyCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReadyCapacity': maxReadyCapacity,
      'minReadyCapacity': ?minReadyCapacity,
    };
  }

  factory StandbyVirtualMachinePoolElasticityProfileResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return StandbyVirtualMachinePoolElasticityProfileResponse(
      maxReadyCapacity: pulumi.Input.fromValue(
        map['maxReadyCapacity'] as double,
      ),
      minReadyCapacity: (() {
        final guardedValue = map['minReadyCapacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
