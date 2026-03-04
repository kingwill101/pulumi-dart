// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_machine_spec_accelerator_type.dart';

/// Specification of a single machine.
class GoogleCloudAiplatformV1MachineSpec {
  /// The number of accelerators to attach to the machine.
  final pulumi.Input<int>? acceleratorCount;

  /// Immutable. The type of accelerator(s) that may be attached to the machine as per accelerator_count.
  final pulumi.Input<GoogleCloudAiplatformV1MachineSpecAcceleratorType>?
  acceleratorType;

  /// Immutable. The type of the machine. See the [list of machine types supported for prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types) See the [list of machine types supported for custom training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types). For DeployedModel this field is optional, and the default value is `n1-standard-2`. For BatchPredictionJob or as part of WorkerPoolSpec this field is required.
  final pulumi.Input<String>? machineType;

  /// Immutable. The topology of the TPUs. Corresponds to the TPU topologies available from GKE. (Example: tpu_topology: "2x2x1").
  final pulumi.Input<String>? tpuTopology;

  /// Creates a new [GoogleCloudAiplatformV1MachineSpec].
  /// [acceleratorCount] The number of accelerators to attach to the machine.
  /// [acceleratorType] Immutable. The type of accelerator(s) that may be attached to the machine as per accelerator_count.
  /// [machineType] Immutable. The type of the machine. See the [list of machine types supported for prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types) See the [list of machine types supported for custom training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types). For DeployedModel this field is optional, and the default value is `n1-standard-2`. For BatchPredictionJob or as part of WorkerPoolSpec this field is required.
  /// [tpuTopology] Immutable. The topology of the TPUs. Corresponds to the TPU topologies available from GKE. (Example: tpu_topology: "2x2x1").
  GoogleCloudAiplatformV1MachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
    this.tpuTopology,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1MachineSpecAcceleratorType,
            String
          >(acceleratorType, (value) => value.wireValue),
      'machineType': ?machineType,
      'tpuTopology': ?tpuTopology,
    };
  }

  factory GoogleCloudAiplatformV1MachineSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1MachineSpec(
      acceleratorCount: (() {
        final guardedValue = map['acceleratorCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      acceleratorType: (() {
        final guardedValue = map['acceleratorType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudAiplatformV1MachineSpecAcceleratorType.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      machineType: (() {
        final guardedValue = map['machineType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tpuTopology: (() {
        final guardedValue = map['tpuTopology'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
