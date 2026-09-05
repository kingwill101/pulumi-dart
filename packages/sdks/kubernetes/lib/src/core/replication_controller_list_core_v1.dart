import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'replication_controller.dart';
import 'replication_controller_list_args.dart';

/// ReplicationControllerList is a collection of replication controllers.
class ReplicationControllerListCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// List of replication controllers. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller
  late final pulumi.Output<List<ReplicationController>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [ReplicationControllerListCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationControllerListCoreV1]. {@macro pulumi_core_v1_replication_controller_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationControllerListCoreV1(
    String name, {
    ReplicationControllerListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:ReplicationControllerList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<ReplicationController>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReplicationController>(guardedValue, (value) => ReplicationController.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ReplicationControllerListCoreV1] resource.
  ReplicationControllerListCoreV1.reference(String urn)
    : super(
        'kubernetes:core/v1:ReplicationControllerList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<ReplicationController>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReplicationController>(guardedValue, (value) => ReplicationController.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
