// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEndpointDeployedModelDedicatedResourceMachineSpec {
  /// (Output)
  /// The number of accelerators to attach to the machine.
  final pulumi.Input<int>? acceleratorCount;
  /// (Output)
  /// The type of accelerator(s) that may be attached to the machine as per accelerator_count. See possible values [here](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/MachineSpec#AcceleratorType).
  final pulumi.Input<String>? acceleratorType;
  /// (Output)
  /// The type of the machine. See the [list of machine types supported for prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types) See the [list of machine types supported for custom training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types). For DeployedModel this field is optional, and the default value is `n1-standard-2`. For BatchPredictionJob or as part of WorkerPoolSpec this field is required. TODO: Try to better unify the required vs optional.
  final pulumi.Input<String>? machineType;

  /// Creates a new [AiEndpointDeployedModelDedicatedResourceMachineSpec].
  /// [acceleratorCount] (Output)
  /// [acceleratorType] (Output)
  /// [machineType] (Output)
  AiEndpointDeployedModelDedicatedResourceMachineSpec({
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

  factory AiEndpointDeployedModelDedicatedResourceMachineSpec.fromMap(Map<String, dynamic> map) {
    return AiEndpointDeployedModelDedicatedResourceMachineSpec(
      acceleratorCount: map['acceleratorCount'] == null ? null : (map['acceleratorCount'] as int).input(),
      acceleratorType: map['acceleratorType'] == null ? null : (map['acceleratorType'] as String).input(),
      machineType: map['machineType'] == null ? null : (map['machineType'] as String).input(),
    );
  }
}

