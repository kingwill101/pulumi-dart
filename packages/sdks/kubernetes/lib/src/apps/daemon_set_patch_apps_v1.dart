import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'daemon_set_patch_args.dart';
import 'daemon_set_spec_patch.dart';
import 'daemon_set_status_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// DaemonSet represents the configuration of a daemon set.
class DaemonSetPatchAppsV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// The desired behavior of this daemon set. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<DaemonSetSpecPatch?> spec;
  /// The current status of this daemon set. This data may be out of date by some window of time. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<DaemonSetStatusPatch?> status;

  /// Creates a new [DaemonSetPatchAppsV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DaemonSetPatchAppsV1]. {@macro pulumi_apps_v1_daemon_set_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DaemonSetPatchAppsV1(
    String name, {
    DaemonSetPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:apps/v1:DaemonSetPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<DaemonSetSpecPatch?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DaemonSetSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<DaemonSetStatusPatch?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DaemonSetStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DaemonSetPatchAppsV1] resource.
  DaemonSetPatchAppsV1.reference(String urn)
    : super(
        'kubernetes:apps/v1:DaemonSetPatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<DaemonSetSpecPatch?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DaemonSetSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<DaemonSetStatusPatch?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DaemonSetStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
