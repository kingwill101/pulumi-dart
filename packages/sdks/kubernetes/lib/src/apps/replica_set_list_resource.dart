import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'replica_set_list_apps_v1beta2_args.dart';
import 'replica_set_resource.dart';

/// ReplicaSetList is a collection of ReplicaSets.
class ReplicaSetListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// List of ReplicaSets. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller
  late final pulumi.Output<List<ReplicaSetResource>> items;
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
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<ReplicaSetResource>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
