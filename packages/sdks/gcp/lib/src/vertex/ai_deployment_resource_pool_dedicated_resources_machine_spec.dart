// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiDeploymentResourcePoolDedicatedResourcesMachineSpec {
  /// The number of accelerators to attach to the machine.
  final pulumi.Input<int>? acceleratorCount;
  /// The type of accelerator(s) that may be attached to the machine as per accelerator_count. See possible values [here](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/MachineSpec#AcceleratorType).
  final pulumi.Input<String>? acceleratorType;
  /// The type of the machine. See the [list of machine types supported for prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types).
  final pulumi.Input<String>? machineType;

  /// Creates a new [AiDeploymentResourcePoolDedicatedResourcesMachineSpec].
  /// [acceleratorCount] The number of accelerators to attach to the machine.
  /// [acceleratorType] The type of accelerator(s) that may be attached to the machine as per accelerator_count. See possible values [here](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/MachineSpec#AcceleratorType).
  /// [machineType] The type of the machine. See the [list of machine types supported for prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types).
  const AiDeploymentResourcePoolDedicatedResourcesMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
      'machineType': ?machineType,
    };
  }

  factory AiDeploymentResourcePoolDedicatedResourcesMachineSpec.fromMap(Map<String, dynamic> map) {
    return AiDeploymentResourcePoolDedicatedResourcesMachineSpec(
      acceleratorCount: (() { final guardedValue = map['acceleratorCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
