// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'workload_scheduling_k8s_io_v1beta1.dart';

/// {@template pulumi_scheduling_k8s_io_v1beta1_workload_list_scheduling_k8s_io_v1beta1_args_doc}
/// The set of arguments for WorkloadList.
/// {@endtemplate}
/// {@macro pulumi_scheduling_k8s_io_v1beta1_workload_list_scheduling_k8s_io_v1beta1_args_doc}
class WorkloadListSchedulingK8sIoV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// items is the list of Workloads.
  final pulumi.Input<List<WorkloadSchedulingK8sIoV1beta1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// metadata is the standard list metadata.
  final pulumi.Input<ListMeta?>? metadata;

  /// Creates a new [WorkloadListSchedulingK8sIoV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] items is the list of Workloads.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata is the standard list metadata.
  const WorkloadListSchedulingK8sIoV1beta1Args({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': pulumi.Input.mapInputValue<List<WorkloadSchedulingK8sIoV1beta1>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<WorkloadSchedulingK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory WorkloadListSchedulingK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return WorkloadListSchedulingK8sIoV1beta1Args(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      items: pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadSchedulingK8sIoV1beta1>(map['items']!, (value) => WorkloadSchedulingK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
