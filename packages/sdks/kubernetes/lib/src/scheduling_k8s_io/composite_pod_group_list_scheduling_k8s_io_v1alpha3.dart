import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'composite_pod_group.dart';
import 'composite_pod_group_list_args.dart';

/// CompositePodGroupList contains a list of CompositePodGroup resources.
class CompositePodGroupListSchedulingK8sIoV1alpha3 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is the list of CompositePodGroups.
  late final pulumi.Output<List<CompositePodGroup>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [CompositePodGroupListSchedulingK8sIoV1alpha3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CompositePodGroupListSchedulingK8sIoV1alpha3]. {@macro pulumi_scheduling_k8s_io_v1alpha3_composite_pod_group_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CompositePodGroupListSchedulingK8sIoV1alpha3(
    String name, {
    CompositePodGroupListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:scheduling.k8s.io/v1alpha3:CompositePodGroupList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<CompositePodGroup>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CompositePodGroup>(guardedValue, (value) => CompositePodGroup.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [CompositePodGroupListSchedulingK8sIoV1alpha3] resource.
  CompositePodGroupListSchedulingK8sIoV1alpha3.reference(String urn)
    : super(
        'kubernetes:scheduling.k8s.io/v1alpha3:CompositePodGroupList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<CompositePodGroup>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CompositePodGroup>(guardedValue, (value) => CompositePodGroup.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
