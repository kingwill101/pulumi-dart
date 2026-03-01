import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'volume_attributes_class_list_args.dart';
import 'volume_attributes_class_storage_k8s_io_v1.dart';

/// VolumeAttributesClassList is a collection of VolumeAttributesClass objects.
class VolumeAttributesClassListStorageK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is the list of VolumeAttributesClass objects.
  late final pulumi.Output<List<VolumeAttributesClassStorageK8sIoV1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [VolumeAttributesClassListStorageK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeAttributesClassListStorageK8sIoV1]. {@macro pulumi_storage_k8s_io_v1_volume_attributes_class_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeAttributesClassListStorageK8sIoV1(
    String name, {
    VolumeAttributesClassListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:storage.k8s.io/v1:VolumeAttributesClassList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<VolumeAttributesClassStorageK8sIoV1>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
