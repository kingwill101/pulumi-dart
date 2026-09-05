import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'persistent_volume_claim_patch_args.dart';
import 'persistent_volume_claim_spec_patch.dart';
import 'persistent_volume_claim_status_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// PersistentVolumeClaim is a user's request for and claim to a persistent volume
class PersistentVolumeClaimPatchCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// spec defines the desired characteristics of a volume requested by a pod author. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  late final pulumi.Output<PersistentVolumeClaimSpecPatch?> spec;
  /// status represents the current information/status of a persistent volume claim. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  late final pulumi.Output<PersistentVolumeClaimStatusPatch?> status;

  /// Creates a new [PersistentVolumeClaimPatchCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PersistentVolumeClaimPatchCoreV1]. {@macro pulumi_core_v1_persistent_volume_claim_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PersistentVolumeClaimPatchCoreV1(
    String name, {
    PersistentVolumeClaimPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:PersistentVolumeClaimPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<PersistentVolumeClaimSpecPatch?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PersistentVolumeClaimSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<PersistentVolumeClaimStatusPatch?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PersistentVolumeClaimStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [PersistentVolumeClaimPatchCoreV1] resource.
  PersistentVolumeClaimPatchCoreV1.reference(String urn)
    : super(
        'kubernetes:core/v1:PersistentVolumeClaimPatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<PersistentVolumeClaimSpecPatch?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PersistentVolumeClaimSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<PersistentVolumeClaimStatusPatch?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PersistentVolumeClaimStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
