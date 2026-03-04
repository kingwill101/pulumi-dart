import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'stateful_set_apps_v1beta1_args.dart';
import 'stateful_set_spec_apps_v1beta1.dart';
import 'stateful_set_status_apps_v1beta1.dart';

/// StatefulSet represents a set of pods with consistent identities. Identities are defined as:
/// - Network: A single stable DNS and hostname.
/// - Storage: As many VolumeClaims as requested.
/// The StatefulSet guarantees that a given network identity will always map to the same storage identity.
///
/// This resource waits until its status is ready before registering success
/// for create/update, and populating output properties from the current state of the resource.
/// The following conditions are used to determine whether the resource creation has
/// succeeded or failed:
///
/// 1. The value of 'spec.replicas' matches '.status.replicas', '.status.currentReplicas',
/// and '.status.readyReplicas'.
/// 2. The value of '.status.updateRevision' matches '.status.currentRevision'.
///
/// If the StatefulSet has not reached a Ready state after 10 minutes, it will
/// time out and mark the resource update as Failed. You can override the default timeout value
/// by setting the 'customTimeouts' option on the resource.
class StatefulSetResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  late final pulumi.Output<ObjectMeta> metadata;

  /// Spec defines the desired identities of pods in this set.
  late final pulumi.Output<StatefulSetSpecAppsV1beta1> spec;

  /// Status is the current status of Pods in this StatefulSet. This data may be out of date by some window of time.
  late final pulumi.Output<StatefulSetStatusAppsV1beta1?> status;

  /// Creates a new [StatefulSetResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StatefulSetResource]. {@macro pulumi_apps_v1beta1_stateful_set_apps_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StatefulSetResource(
    String name, {
    StatefulSetAppsV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:apps/v1beta1:StatefulSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    spec = registerOutput<StatefulSetSpecAppsV1beta1>('spec');
    status = registerOutput<StatefulSetStatusAppsV1beta1?>('status');
  }
}
