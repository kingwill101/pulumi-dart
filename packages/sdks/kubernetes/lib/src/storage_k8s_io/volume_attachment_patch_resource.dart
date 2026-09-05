import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'volume_attachment_patch_storage_k8s_io_v1alpha1_args.dart';
import 'volume_attachment_spec_patch_storage_k8s_io_v1alpha1.dart';
import 'volume_attachment_status_patch_storage_k8s_io_v1alpha1.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// VolumeAttachment captures the intent to attach or detach the specified volume to/from the specified node.
///
/// VolumeAttachment objects are non-namespaced.
class VolumeAttachmentPatchResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// Specification of the desired attach/detach volume behavior. Populated by the Kubernetes system.
  late final pulumi.Output<VolumeAttachmentSpecPatchStorageK8sIoV1alpha1?> spec;
  /// Status of the VolumeAttachment request. Populated by the entity completing the attach or detach operation, i.e. the external-attacher.
  late final pulumi.Output<VolumeAttachmentStatusPatchStorageK8sIoV1alpha1?> status;

  /// Creates a new [VolumeAttachmentPatchResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeAttachmentPatchResource]. {@macro pulumi_storage_k8s_io_v1alpha1_volume_attachment_patch_storage_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeAttachmentPatchResource(
    String name, {
    VolumeAttachmentPatchStorageK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:storage.k8s.io/v1alpha1:VolumeAttachmentPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<VolumeAttachmentSpecPatchStorageK8sIoV1alpha1?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeAttachmentSpecPatchStorageK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<VolumeAttachmentStatusPatchStorageK8sIoV1alpha1?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeAttachmentStatusPatchStorageK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [VolumeAttachmentPatchResource] resource.
  VolumeAttachmentPatchResource.reference(String urn)
    : super(
        'kubernetes:storage.k8s.io/v1alpha1:VolumeAttachmentPatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<VolumeAttachmentSpecPatchStorageK8sIoV1alpha1?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeAttachmentSpecPatchStorageK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<VolumeAttachmentStatusPatchStorageK8sIoV1alpha1?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeAttachmentStatusPatchStorageK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
