import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'replica_set_apps_v1beta2.dart';
import 'replica_set_list_apps_v1beta2_args.dart';

/// ReplicaSetList is a collection of ReplicaSets.
class ReplicaSetListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// List of ReplicaSets. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller
  late final pulumi.Output<List<ReplicaSetAppsV1beta2>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [ReplicaSetListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicaSetListResource]. {@macro pulumi_apps_v1beta2_replica_set_list_apps_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicaSetListResource(
    String name, {
    ReplicaSetListAppsV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:apps/v1beta2:ReplicaSetList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<ReplicaSetAppsV1beta2>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReplicaSetAppsV1beta2>(guardedValue, (value) => ReplicaSetAppsV1beta2.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ReplicaSetListResource] resource.
  ReplicaSetListResource.reference(String urn)
    : super(
        'kubernetes:apps/v1beta2:ReplicaSetList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<ReplicaSetAppsV1beta2>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReplicaSetAppsV1beta2>(guardedValue, (value) => ReplicaSetAppsV1beta2.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
