// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_create_notebook_execution_job_request_notebook_execution_job_custom_environment_spec_machine_spec_reservation_affinity.dart';

class ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpec {
  /// The number of accelerators to attach to the machine. For accelerator optimized machine types (https://cloud.google.com/compute/docs/accelerator-optimized-machines), One may set the acceleratorCount from 1 to N for machine with N GPUs. If acceleratorCount is less than or equal to N / 2, Vertex will co-schedule the replicas of the model into the same VM to save cost. For example, if the machine type is a3-highgpu-8g, which has 8 H100 GPUs, one can set acceleratorCount to 1 to 8. If acceleratorCount is 1, 2, 3, or 4, Vertex will co-schedule 8, 4, 2, or 2 replicas of the model into the same VM to save cost. When co-scheduling, CPU, memory and storage on the VM will be distributed to replicas on the VM. For example, one can expect a co-scheduled replica requesting 2 GPUs out of a 8-GPU VM will receive 25% of the CPU, memory and storage of the VM. Note that the feature is not compatible with multihost_gpu_node_count. When multihostGpuNodeCount is set, the co-scheduling will not be enabled.
  final pulumi.Input<int?>? acceleratorCount;
  /// Possible values: NVIDIA_TESLA_K80 NVIDIA_TESLA_P100 NVIDIA_TESLA_V100 NVIDIA_TESLA_P4 NVIDIA_TESLA_T4 NVIDIA_TESLA_A100 NVIDIA_A100_80GB NVIDIA_L4 NVIDIA_H100_80GB NVIDIA_H100_MEGA_80GB NVIDIA_H200_141GB NVIDIA_B200 NVIDIA_GB200 NVIDIA_RTX_PRO_6000 TPU_V2 TPU_V3 TPU_V4_POD TPU_V5_LITEPOD
  final pulumi.Input<String?>? acceleratorType;
  /// The Nvidia GPU partition size. When specified, the requested accelerators will be partitioned into smaller GPU partitions. For example, if the request is for 8 units of NVIDIA A100 GPUs, and gpu_partition_size="1g.10gb", the service will create 8 * 7 = 56 partitioned MIG instances. The partition size must be a value supported by the requested accelerator. Refer to [Nvidia GPU Partitioning](https://cloud.google.com/kubernetes-engine/docs/how-to/gpus-multi#multi-instance_gpu_partitions) for the available partition sizes. If set, the acceleratorCount should be set to 1.
  final pulumi.Input<String?>? gpuPartitionSize;
  /// The type of the machine. See the [list of machine types supported for prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types) See the [list of machine types supported for custom training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types). For DeployedModel this field is optional, and the default value is `n1-standard-2`. For BatchPredictionJob or as part of WorkerPoolSpec this field is required.
  final pulumi.Input<String?>? machineType;
  /// A ReservationAffinity can be used to configure a Vertex AI resource (e.g., a DeployedModel) to draw its Compute Engine resources from a Shared Reservation, or exclusively from on-demand capacity.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpecReservationAffinity?>? reservationAffinity;
  /// The topology of the TPUs. Corresponds to the TPU topologies available from GKE. (Example: tpu_topology: "2x2x1").
  final pulumi.Input<String?>? tpuTopology;

  /// Creates a new [ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpec].
  /// [acceleratorCount] The number of accelerators to attach to the machine. For accelerator optimized machine types (https://cloud.google.com/compute/docs/accelerator-optimized-machines), One may set the acceleratorCount from 1 to N for machine with N GPUs. If acceleratorCount is less than or equal to N / 2, Vertex will co-schedule the replicas of the model into the same VM to save cost. For example, if the machine type is a3-highgpu-8g, which has 8 H100 GPUs, one can set acceleratorCount to 1 to 8. If acceleratorCount is 1, 2, 3, or 4, Vertex will co-schedule 8, 4, 2, or 2 replicas of the model into the same VM to save cost. When co-scheduling, CPU, memory and storage on the VM will be distributed to replicas on the VM. For example, one can expect a co-scheduled replica requesting 2 GPUs out of a 8-GPU VM will receive 25% of the CPU, memory and storage of the VM. Note that the feature is not compatible with multihost_gpu_node_count. When multihostGpuNodeCount is set, the co-scheduling will not be enabled.
  /// [acceleratorType] Possible values: NVIDIA_TESLA_K80 NVIDIA_TESLA_P100 NVIDIA_TESLA_V100 NVIDIA_TESLA_P4 NVIDIA_TESLA_T4 NVIDIA_TESLA_A100 NVIDIA_A100_80GB NVIDIA_L4 NVIDIA_H100_80GB NVIDIA_H100_MEGA_80GB NVIDIA_H200_141GB NVIDIA_B200 NVIDIA_GB200 NVIDIA_RTX_PRO_6000 TPU_V2 TPU_V3 TPU_V4_POD TPU_V5_LITEPOD
  /// [gpuPartitionSize] The Nvidia GPU partition size. When specified, the requested accelerators will be partitioned into smaller GPU partitions. For example, if the request is for 8 units of NVIDIA A100 GPUs, and gpu_partition_size="1g.10gb", the service will create 8 * 7 = 56 partitioned MIG instances. The partition size must be a value supported by the requested accelerator. Refer to [Nvidia GPU Partitioning](https://cloud.google.com/kubernetes-engine/docs/how-to/gpus-multi#multi-instance_gpu_partitions) for the available partition sizes. If set, the acceleratorCount should be set to 1.
  /// [machineType] The type of the machine. See the [list of machine types supported for prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types) See the [list of machine types supported for custom training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types). For DeployedModel this field is optional, and the default value is `n1-standard-2`. For BatchPredictionJob or as part of WorkerPoolSpec this field is required.
  /// [reservationAffinity] A ReservationAffinity can be used to configure a Vertex AI resource (e.g., a DeployedModel) to draw its Compute Engine resources from a Shared Reservation, or exclusively from on-demand capacity.
  /// [tpuTopology] The topology of the TPUs. Corresponds to the TPU topologies available from GKE. (Example: tpu_topology: "2x2x1").
  const ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.gpuPartitionSize,
    this.machineType,
    this.reservationAffinity,
    this.tpuTopology,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
      'gpuPartitionSize': ?gpuPartitionSize,
      'machineType': ?machineType,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpecReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'tpuTopology': ?tpuTopology,
    };
  }

  factory ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpec.fromMap(Map<String, dynamic> map) {
    return ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpec(
      acceleratorCount: (() { final guardedValue = map['acceleratorCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gpuPartitionSize: (() { final guardedValue = map['gpuPartitionSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationAffinity: (() { final guardedValue = map['reservationAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpecReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tpuTopology: (() { final guardedValue = map['tpuTopology']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
