import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'replication_controller_args.dart';
import 'replication_controller_spec.dart';
import 'replication_controller_status.dart';

/// ReplicationController represents the configuration of a replication controller.
class ReplicationControllerCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// If the Labels of a ReplicationController are empty, they are defaulted to be the same as the Pod(s) that the replication controller manages. Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// Spec defines the specification of the desired behavior of the replication controller. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ReplicationControllerSpec> spec;

  /// Status is the most recently observed status of the replication controller. This data may be out of date by some window of time. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ReplicationControllerStatus?> status;

  /// Creates a new [ReplicationControllerCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationControllerCoreV1]. {@macro pulumi_core_v1_replication_controller_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationControllerCoreV1(
    String name, {
    ReplicationControllerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:core/v1:ReplicationController',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    spec = registerOutput<ReplicationControllerSpec>('spec');
    status = registerOutput<ReplicationControllerStatus?>('status');
  }
}
