// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_container_spec.dart';
import 'google_cloud_aiplatform_v1beta1_disk_spec.dart';
import 'google_cloud_aiplatform_v1beta1_machine_spec.dart';
import 'google_cloud_aiplatform_v1beta1_nfs_mount.dart';
import 'google_cloud_aiplatform_v1beta1_python_package_spec.dart';

/// Represents the spec of a worker pool in a job.
class GoogleCloudAiplatformV1beta1WorkerPoolSpec {
  /// The custom container task.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ContainerSpec>? containerSpec;

  /// Disk spec.
  final pulumi.Input<GoogleCloudAiplatformV1beta1DiskSpec>? diskSpec;

  /// Optional. Immutable. The specification of a single machine.
  final pulumi.Input<GoogleCloudAiplatformV1beta1MachineSpec>? machineSpec;

  /// Optional. List of NFS mount spec.
  final pulumi.Input<List<GoogleCloudAiplatformV1beta1NfsMount>>? nfsMounts;

  /// The Python packaged task.
  final pulumi.Input<GoogleCloudAiplatformV1beta1PythonPackageSpec>?
  pythonPackageSpec;

  /// Optional. The number of worker replicas to use for this worker pool.
  final pulumi.Input<String>? replicaCount;

  /// Creates a new [GoogleCloudAiplatformV1beta1WorkerPoolSpec].
  /// [containerSpec] The custom container task.
  /// [diskSpec] Disk spec.
  /// [machineSpec] Optional. Immutable. The specification of a single machine.
  /// [nfsMounts] Optional. List of NFS mount spec.
  /// [pythonPackageSpec] The Python packaged task.
  /// [replicaCount] Optional. The number of worker replicas to use for this worker pool.
  GoogleCloudAiplatformV1beta1WorkerPoolSpec({
    this.containerSpec,
    this.diskSpec,
    this.machineSpec,
    this.nfsMounts,
    this.pythonPackageSpec,
    this.replicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerSpec':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1ContainerSpec,
            Map<String, dynamic>
          >(containerSpec, (value) => value.toMap()),
      'diskSpec':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1DiskSpec,
            Map<String, dynamic>
          >(diskSpec, (value) => value.toMap()),
      'machineSpec':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1MachineSpec,
            Map<String, dynamic>
          >(machineSpec, (value) => value.toMap()),
      'nfsMounts':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudAiplatformV1beta1NfsMount>,
            List<Map<String, dynamic>>
          >(
            nfsMounts,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudAiplatformV1beta1NfsMount,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'pythonPackageSpec':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1PythonPackageSpec,
            Map<String, dynamic>
          >(pythonPackageSpec, (value) => value.toMap()),
      'replicaCount': ?replicaCount,
    };
  }

  factory GoogleCloudAiplatformV1beta1WorkerPoolSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1WorkerPoolSpec(
      containerSpec: (() {
        final guardedValue = map['containerSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudAiplatformV1beta1ContainerSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      diskSpec: (() {
        final guardedValue = map['diskSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudAiplatformV1beta1DiskSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      machineSpec: (() {
        final guardedValue = map['machineSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudAiplatformV1beta1MachineSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      nfsMounts: (() {
        final guardedValue = map['nfsMounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1NfsMount>(
            guardedValue,
            (value) => GoogleCloudAiplatformV1beta1NfsMount.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      pythonPackageSpec: (() {
        final guardedValue = map['pythonPackageSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudAiplatformV1beta1PythonPackageSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      replicaCount: (() {
        final guardedValue = map['replicaCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
