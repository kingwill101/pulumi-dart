import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'workload_list_scheduling_k8s_io_v1alpha3_args.dart';
import 'workload_scheduling_k8s_io_v1alpha3.dart';

/// WorkloadList contains a list of Workload resources.
class WorkloadListSchedulingK8sIoV1alpha3Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is the list of Workloads.
  late final pulumi.Output<List<WorkloadSchedulingK8sIoV1alpha3>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [WorkloadListSchedulingK8sIoV1alpha3Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadListSchedulingK8sIoV1alpha3Resource]. {@macro pulumi_scheduling_k8s_io_v1alpha3_workload_list_scheduling_k8s_io_v1alpha3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadListSchedulingK8sIoV1alpha3Resource(
    String name, {
    WorkloadListSchedulingK8sIoV1alpha3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:scheduling.k8s.io/v1alpha3:WorkloadList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<WorkloadSchedulingK8sIoV1alpha3>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkloadSchedulingK8sIoV1alpha3>(guardedValue, (value) => WorkloadSchedulingK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [WorkloadListSchedulingK8sIoV1alpha3Resource] resource.
  WorkloadListSchedulingK8sIoV1alpha3Resource.reference(String urn)
    : super(
        'kubernetes:scheduling.k8s.io/v1alpha3:WorkloadList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<WorkloadSchedulingK8sIoV1alpha3>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkloadSchedulingK8sIoV1alpha3>(guardedValue, (value) => WorkloadSchedulingK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
