// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_with_model_garden_deployment_deploy_config_dedicated_resources_machine_spec_reservation_affinity.dart';

class AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec {
  /// The number of accelerators to attach to the machine.
  final pulumi.Input<int>? acceleratorCount;
  /// Possible values:
  /// ACCELERATOR_TYPE_UNSPECIFIED
  /// NVIDIA_TESLA_K80
  /// NVIDIA_TESLA_P100
  /// NVIDIA_TESLA_V100
  /// NVIDIA_TESLA_P4
  /// NVIDIA_TESLA_T4
  /// NVIDIA_TESLA_A100
  /// NVIDIA_A100_80GB
  /// NVIDIA_L4
  /// NVIDIA_H100_80GB
  /// NVIDIA_H100_MEGA_80GB
  /// NVIDIA_H200_141GB
  /// NVIDIA_B200
  /// TPU_V2
  /// TPU_V3
  /// TPU_V4_POD
  /// TPU_V5_LITEPOD
  final pulumi.Input<String>? acceleratorType;
  /// The type of the machine.
  /// See the [list of machine types supported for
  /// prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types)
  /// See the [list of machine types supported for custom
  /// training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types).
  /// For DeployedModel this field is optional, and the default
  /// value is `n1-standard-2`. For BatchPredictionJob or as part of
  /// WorkerPoolSpec this field is required.
  final pulumi.Input<String>? machineType;
  /// The number of nodes per replica for multihost GPU deployments.
  final pulumi.Input<int>? multihostGpuNodeCount;
  /// A ReservationAffinity can be used to configure a Vertex AI resource (e.g., a
  /// DeployedModel) to draw its Compute Engine resources from a Shared
  /// Reservation, or exclusively from on-demand capacity.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity>? reservationAffinity;
  /// The topology of the TPUs. Corresponds to the TPU topologies available from
  /// GKE. (Example: tpu_topology: "2x2x1").
  final pulumi.Input<String>? tpuTopology;

  /// Creates a new [AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec].
  /// [acceleratorCount] The number of accelerators to attach to the machine.
  /// [acceleratorType] Possible values:
  /// [machineType] The type of the machine.
  /// [multihostGpuNodeCount] The number of nodes per replica for multihost GPU deployments.
  /// [reservationAffinity] A ReservationAffinity can be used to configure a Vertex AI resource (e.g., a
  /// [tpuTopology] The topology of the TPUs. Corresponds to the TPU topologies available from
  const AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
    this.multihostGpuNodeCount,
    this.reservationAffinity,
    this.tpuTopology,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
      'machineType': ?machineType,
      'multihostGpuNodeCount': ?multihostGpuNodeCount,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'tpuTopology': ?tpuTopology,
    };
  }

  factory AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec(
      acceleratorCount: (() { final guardedValue = map['acceleratorCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multihostGpuNodeCount: (() { final guardedValue = map['multihostGpuNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      reservationAffinity: (() { final guardedValue = map['reservationAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tpuTopology: (() { final guardedValue = map['tpuTopology']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
