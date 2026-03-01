// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_machine_spec_accelerator_type.dart';

/// Specification of a single machine.
class GoogleCloudAiplatformV1beta1MachineSpec {
  /// The number of accelerators to attach to the machine.
  final int? acceleratorCount;
  /// Immutable. The type of accelerator(s) that may be attached to the machine as per accelerator_count.
  final GoogleCloudAiplatformV1beta1MachineSpecAcceleratorType? acceleratorType;
  /// Immutable. The type of the machine. See the [list of machine types supported for prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types) See the [list of machine types supported for custom training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types). For DeployedModel this field is optional, and the default value is `n1-standard-2`. For BatchPredictionJob or as part of WorkerPoolSpec this field is required.
  final String? machineType;
  /// Immutable. The topology of the TPUs. Corresponds to the TPU topologies available from GKE. (Example: tpu_topology: "2x2x1").
  final String? tpuTopology;

  /// Creates a new [GoogleCloudAiplatformV1beta1MachineSpec].
  /// [acceleratorCount] The number of accelerators to attach to the machine.
  /// [acceleratorType] Immutable. The type of accelerator(s) that may be attached to the machine as per accelerator_count.
  /// [machineType] Immutable. The type of the machine. See the [list of machine types supported for prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types) See the [list of machine types supported for custom training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types). For DeployedModel this field is optional, and the default value is `n1-standard-2`. For BatchPredictionJob or as part of WorkerPoolSpec this field is required.
  /// [tpuTopology] Immutable. The topology of the TPUs. Corresponds to the TPU topologies available from GKE. (Example: tpu_topology: "2x2x1").
  GoogleCloudAiplatformV1beta1MachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
    this.tpuTopology,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType == null ? null : acceleratorType!.value,
      'machineType': ?machineType,
      'tpuTopology': ?tpuTopology,
    };
  }

  factory GoogleCloudAiplatformV1beta1MachineSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1MachineSpec(
      acceleratorCount: map['acceleratorCount'] == null ? null : map['acceleratorCount'] as int,
      acceleratorType: map['acceleratorType'] == null ? null : GoogleCloudAiplatformV1beta1MachineSpecAcceleratorType.fromValue(map['acceleratorType'] as String),
      machineType: map['machineType'] == null ? null : map['machineType'] as String,
      tpuTopology: map['tpuTopology'] == null ? null : map['tpuTopology'] as String,
    );
  }
}

