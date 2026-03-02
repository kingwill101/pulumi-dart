// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_container_spec_response.dart';
import 'google_cloud_aiplatform_v1_disk_spec_response.dart';
import 'google_cloud_aiplatform_v1_machine_spec_response.dart';
import 'google_cloud_aiplatform_v1_nfs_mount_response.dart';
import 'google_cloud_aiplatform_v1_python_package_spec_response.dart';

/// Represents the spec of a worker pool in a job.
class GoogleCloudAiplatformV1WorkerPoolSpecResponse {
  /// The custom container task.
  final pulumi.Input<GoogleCloudAiplatformV1ContainerSpecResponse> containerSpec;
  /// Disk spec.
  final pulumi.Input<GoogleCloudAiplatformV1DiskSpecResponse> diskSpec;
  /// Optional. Immutable. The specification of a single machine.
  final pulumi.Input<GoogleCloudAiplatformV1MachineSpecResponse> machineSpec;
  /// Optional. List of NFS mount spec.
  final pulumi.Input<List<GoogleCloudAiplatformV1NfsMountResponse>> nfsMounts;
  /// The Python packaged task.
  final pulumi.Input<GoogleCloudAiplatformV1PythonPackageSpecResponse> pythonPackageSpec;
  /// Optional. The number of worker replicas to use for this worker pool.
  final pulumi.Input<String> replicaCount;

  /// Creates a new [GoogleCloudAiplatformV1WorkerPoolSpecResponse].
  /// [containerSpec] The custom container task.
  /// [diskSpec] Disk spec.
  /// [machineSpec] Optional. Immutable. The specification of a single machine.
  /// [nfsMounts] Optional. List of NFS mount spec.
  /// [pythonPackageSpec] The Python packaged task.
  /// [replicaCount] Optional. The number of worker replicas to use for this worker pool.
  GoogleCloudAiplatformV1WorkerPoolSpecResponse({
    required this.containerSpec,
    required this.diskSpec,
    required this.machineSpec,
    required this.nfsMounts,
    required this.pythonPackageSpec,
    required this.replicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1ContainerSpecResponse, Map<String, dynamic>>(containerSpec, (value) => value.toMap()),
      'diskSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1DiskSpecResponse, Map<String, dynamic>>(diskSpec, (value) => value.toMap()),
      'machineSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1MachineSpecResponse, Map<String, dynamic>>(machineSpec, (value) => value.toMap()),
      'nfsMounts': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1NfsMountResponse>, List<Map<String, dynamic>>>(nfsMounts, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1NfsMountResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pythonPackageSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1PythonPackageSpecResponse, Map<String, dynamic>>(pythonPackageSpec, (value) => value.toMap()),
      'replicaCount': replicaCount,
    };
  }

  factory GoogleCloudAiplatformV1WorkerPoolSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1WorkerPoolSpecResponse(
      containerSpec: (GoogleCloudAiplatformV1ContainerSpecResponse.fromMap((map['containerSpec'] as Map).cast<String, dynamic>())).input(),
      diskSpec: (GoogleCloudAiplatformV1DiskSpecResponse.fromMap((map['diskSpec'] as Map).cast<String, dynamic>())).input(),
      machineSpec: (GoogleCloudAiplatformV1MachineSpecResponse.fromMap((map['machineSpec'] as Map).cast<String, dynamic>())).input(),
      nfsMounts: (pulumi.Input.decodeList<GoogleCloudAiplatformV1NfsMountResponse>(map['nfsMounts'], (value) => GoogleCloudAiplatformV1NfsMountResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pythonPackageSpec: (GoogleCloudAiplatformV1PythonPackageSpecResponse.fromMap((map['pythonPackageSpec'] as Map).cast<String, dynamic>())).input(),
      replicaCount: (map['replicaCount'] as String).input(),
    );
  }
}

