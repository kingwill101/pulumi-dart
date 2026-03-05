import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'replica_set_args.dart';
import 'replica_set_spec.dart';
import 'replica_set_status.dart';

/// ReplicaSet ensures that a specified number of pod replicas are running at any given time.
class ReplicaSetAppsV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// If the Labels of a ReplicaSet are empty, they are defaulted to be the same as the Pod(s) that the ReplicaSet manages. Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Spec defines the specification of the desired behavior of the ReplicaSet. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ReplicaSetSpec> spec;
  /// Status is the most recently observed status of the ReplicaSet. This data may be out of date by some window of time. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ReplicaSetStatus?> status;

  /// Creates a new [ReplicaSetAppsV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicaSetAppsV1]. {@macro pulumi_apps_v1_replica_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicaSetAppsV1(
    String name, {
    ReplicaSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:apps/v1:ReplicaSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ReplicaSetSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReplicaSetSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<ReplicaSetStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReplicaSetStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
