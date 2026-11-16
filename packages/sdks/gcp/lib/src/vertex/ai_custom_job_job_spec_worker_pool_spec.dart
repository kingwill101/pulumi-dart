// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_custom_job_job_spec_worker_pool_spec_container_spec.dart';
import 'ai_custom_job_job_spec_worker_pool_spec_disk_spec.dart';
import 'ai_custom_job_job_spec_worker_pool_spec_lustre_mount.dart';
import 'ai_custom_job_job_spec_worker_pool_spec_machine_spec.dart';
import 'ai_custom_job_job_spec_worker_pool_spec_nfs_mount.dart';
import 'ai_custom_job_job_spec_worker_pool_spec_python_package_spec.dart';

class AiCustomJobJobSpecWorkerPoolSpec {
  /// The custom container task. Either `containerSpec` or `pythonPackageSpec` can be provided, but not both.
  /// Structure is documented below.
  final pulumi.Input<AiCustomJobJobSpecWorkerPoolSpecContainerSpec?>? containerSpec;
  /// Disk spec.
  /// Structure is documented below.
  final pulumi.Input<AiCustomJobJobSpecWorkerPoolSpecDiskSpec?>? diskSpec;
  /// List of Lustre mounts.
  /// Structure is documented below.
  final pulumi.Input<List<AiCustomJobJobSpecWorkerPoolSpecLustreMount>?>? lustreMounts;
  /// Specification of a single machine.
  /// Structure is documented below.
  final pulumi.Input<AiCustomJobJobSpecWorkerPoolSpecMachineSpec?>? machineSpec;
  /// List of NFS mount spec.
  /// Structure is documented below.
  final pulumi.Input<List<AiCustomJobJobSpecWorkerPoolSpecNfsMount>?>? nfsMounts;
  /// The Python packaged task. Either `containerSpec` or `pythonPackageSpec` can be provided, but not both.
  /// Structure is documented below.
  final pulumi.Input<AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpec?>? pythonPackageSpec;
  /// The number of worker replicas to use for this worker pool.
  final pulumi.Input<int?>? replicaCount;

  /// Creates a new [AiCustomJobJobSpecWorkerPoolSpec].
  /// [containerSpec] The custom container task. Either `containerSpec` or `pythonPackageSpec` can be provided, but not both.
  /// [diskSpec] Disk spec.
  /// [lustreMounts] List of Lustre mounts.
  /// [machineSpec] Specification of a single machine.
  /// [nfsMounts] List of NFS mount spec.
  /// [pythonPackageSpec] The Python packaged task. Either `containerSpec` or `pythonPackageSpec` can be provided, but not both.
  /// [replicaCount] The number of worker replicas to use for this worker pool.
  const AiCustomJobJobSpecWorkerPoolSpec({
    this.containerSpec,
    this.diskSpec,
    this.lustreMounts,
    this.machineSpec,
    this.nfsMounts,
    this.pythonPackageSpec,
    this.replicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerSpec': ?pulumi.Input.mapOptionalInputValue<AiCustomJobJobSpecWorkerPoolSpecContainerSpec, Map<String, dynamic>>(containerSpec, (value) => value.toMap()),
      'diskSpec': ?pulumi.Input.mapOptionalInputValue<AiCustomJobJobSpecWorkerPoolSpecDiskSpec, Map<String, dynamic>>(diskSpec, (value) => value.toMap()),
      'lustreMounts': ?pulumi.Input.mapOptionalInputValue<List<AiCustomJobJobSpecWorkerPoolSpecLustreMount>, List<Map<String, dynamic>>>(lustreMounts, (value) => pulumi.Input.encodeList<AiCustomJobJobSpecWorkerPoolSpecLustreMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'machineSpec': ?pulumi.Input.mapOptionalInputValue<AiCustomJobJobSpecWorkerPoolSpecMachineSpec, Map<String, dynamic>>(machineSpec, (value) => value.toMap()),
      'nfsMounts': ?pulumi.Input.mapOptionalInputValue<List<AiCustomJobJobSpecWorkerPoolSpecNfsMount>, List<Map<String, dynamic>>>(nfsMounts, (value) => pulumi.Input.encodeList<AiCustomJobJobSpecWorkerPoolSpecNfsMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pythonPackageSpec': ?pulumi.Input.mapOptionalInputValue<AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpec, Map<String, dynamic>>(pythonPackageSpec, (value) => value.toMap()),
      'replicaCount': ?replicaCount,
    };
  }

  factory AiCustomJobJobSpecWorkerPoolSpec.fromMap(Map<String, dynamic> map) {
    return AiCustomJobJobSpecWorkerPoolSpec(
      containerSpec: (() { final guardedValue = map['containerSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiCustomJobJobSpecWorkerPoolSpecContainerSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskSpec: (() { final guardedValue = map['diskSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiCustomJobJobSpecWorkerPoolSpecDiskSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lustreMounts: (() { final guardedValue = map['lustreMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiCustomJobJobSpecWorkerPoolSpecLustreMount>(guardedValue, (value) => AiCustomJobJobSpecWorkerPoolSpecLustreMount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      machineSpec: (() { final guardedValue = map['machineSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiCustomJobJobSpecWorkerPoolSpecMachineSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nfsMounts: (() { final guardedValue = map['nfsMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiCustomJobJobSpecWorkerPoolSpecNfsMount>(guardedValue, (value) => AiCustomJobJobSpecWorkerPoolSpecNfsMount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pythonPackageSpec: (() { final guardedValue = map['pythonPackageSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
