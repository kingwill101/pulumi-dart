import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'workload_list_scheduling_k8s_io_v1alpha2_args.dart';
import 'workload_scheduling_k8s_io_v1alpha2.dart';

/// WorkloadList contains a list of Workload resources.
class WorkloadListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is the list of Workloads.
  late final pulumi.Output<List<WorkloadSchedulingK8sIoV1alpha2>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [WorkloadListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadListResource]. {@macro pulumi_scheduling_k8s_io_v1alpha2_workload_list_scheduling_k8s_io_v1alpha2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadListResource(
    String name, {
    WorkloadListSchedulingK8sIoV1alpha2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:scheduling.k8s.io/v1alpha2:WorkloadList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<WorkloadSchedulingK8sIoV1alpha2>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkloadSchedulingK8sIoV1alpha2>(guardedValue, (value) => WorkloadSchedulingK8sIoV1alpha2.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [WorkloadListResource] resource.
  WorkloadListResource.reference(String urn)
    : super(
        'kubernetes:scheduling.k8s.io/v1alpha2:WorkloadList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<WorkloadSchedulingK8sIoV1alpha2>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkloadSchedulingK8sIoV1alpha2>(guardedValue, (value) => WorkloadSchedulingK8sIoV1alpha2.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
