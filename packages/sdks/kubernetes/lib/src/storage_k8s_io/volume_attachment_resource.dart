import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'volume_attachment_spec_storage_k8s_io_v1alpha1.dart';
import 'volume_attachment_status_storage_k8s_io_v1alpha1.dart';
import 'volume_attachment_storage_k8s_io_v1alpha1_args.dart';

/// VolumeAttachment captures the intent to attach or detach the specified volume to/from the specified node.
///
/// VolumeAttachment objects are non-namespaced.
class VolumeAttachmentResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Specification of the desired attach/detach volume behavior. Populated by the Kubernetes system.
  late final pulumi.Output<VolumeAttachmentSpecStorageK8sIoV1alpha1> spec;
  /// Status of the VolumeAttachment request. Populated by the entity completing the attach or detach operation, i.e. the external-attacher.
  late final pulumi.Output<VolumeAttachmentStatusStorageK8sIoV1alpha1?> status;

  /// Creates a new [VolumeAttachmentResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeAttachmentResource]. {@macro pulumi_storage_k8s_io_v1alpha1_volume_attachment_storage_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeAttachmentResource(
    String name, {
    VolumeAttachmentStorageK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:storage.k8s.io/v1alpha1:VolumeAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<VolumeAttachmentSpecStorageK8sIoV1alpha1>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeAttachmentSpecStorageK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<VolumeAttachmentStatusStorageK8sIoV1alpha1?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeAttachmentStatusStorageK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [VolumeAttachmentResource] resource.
  VolumeAttachmentResource.reference(String urn)
    : super(
        'kubernetes:storage.k8s.io/v1alpha1:VolumeAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<VolumeAttachmentSpecStorageK8sIoV1alpha1>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeAttachmentSpecStorageK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<VolumeAttachmentStatusStorageK8sIoV1alpha1?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeAttachmentStatusStorageK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
