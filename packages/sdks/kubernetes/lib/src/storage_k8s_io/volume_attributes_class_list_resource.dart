import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'volume_attributes_class_list_storage_k8s_io_v1alpha1_args.dart';
import 'volume_attributes_class_resource.dart';

/// VolumeAttributesClassList is a collection of VolumeAttributesClass objects.
class VolumeAttributesClassListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is the list of VolumeAttributesClass objects.
  late final pulumi.Output<List<VolumeAttributesClassResource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [VolumeAttributesClassListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeAttributesClassListResource]. {@macro pulumi_storage_k8s_io_v1alpha1_volume_attributes_class_list_storage_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeAttributesClassListResource(
    String name, {
    VolumeAttributesClassListStorageK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:storage.k8s.io/v1alpha1:VolumeAttributesClassList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<VolumeAttributesClassResource>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
