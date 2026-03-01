import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'volume_attachment_list_storage_k8s_io_v1alpha1_args.dart';
import 'volume_attachment_resource.dart';

/// VolumeAttachmentList is a collection of VolumeAttachment objects.
class VolumeAttachmentListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is the list of VolumeAttachments
  late final pulumi.Output<List<VolumeAttachmentResource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [VolumeAttachmentListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeAttachmentListResource]. {@macro pulumi_storage_k8s_io_v1alpha1_volume_attachment_list_storage_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeAttachmentListResource(
    String name, {
    VolumeAttachmentListStorageK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:storage.k8s.io/v1alpha1:VolumeAttachmentList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<VolumeAttachmentResource>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
