import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'stateful_set_patch_apps_v1beta2_args.dart';
import 'stateful_set_spec_patch_apps_v1beta2.dart';
import 'stateful_set_status_patch_apps_v1beta2.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
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
class StatefulSetPatchAppsV1beta2Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// Spec defines the desired identities of pods in this set.
  late final pulumi.Output<StatefulSetSpecPatchAppsV1beta2?> spec;
  /// Status is the current status of Pods in this StatefulSet. This data may be out of date by some window of time.
  late final pulumi.Output<StatefulSetStatusPatchAppsV1beta2?> status;

  /// Creates a new [StatefulSetPatchAppsV1beta2Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StatefulSetPatchAppsV1beta2Resource]. {@macro pulumi_apps_v1beta2_stateful_set_patch_apps_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StatefulSetPatchAppsV1beta2Resource(
    String name, {
    StatefulSetPatchAppsV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:apps/v1beta2:StatefulSetPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<StatefulSetSpecPatchAppsV1beta2?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StatefulSetSpecPatchAppsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<StatefulSetStatusPatchAppsV1beta2?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StatefulSetStatusPatchAppsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [StatefulSetPatchAppsV1beta2Resource] resource.
  StatefulSetPatchAppsV1beta2Resource.reference(String urn)
    : super(
        'kubernetes:apps/v1beta2:StatefulSetPatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<StatefulSetSpecPatchAppsV1beta2?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StatefulSetSpecPatchAppsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<StatefulSetStatusPatchAppsV1beta2?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StatefulSetStatusPatchAppsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
