import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'device_class_list_resource_k8s_io_v1beta2_args.dart';
import 'device_class_resource_k8s_io_v1beta2_resource.dart';

/// DeviceClassList is a collection of classes.
class DeviceClassListResourceK8sIoV1beta2Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is the list of resource classes.
  late final pulumi.Output<List<DeviceClassResourceK8sIoV1beta2Resource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [DeviceClassListResourceK8sIoV1beta2Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeviceClassListResourceK8sIoV1beta2Resource]. {@macro pulumi_resource_k8s_io_v1beta2_device_class_list_resource_k8s_io_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeviceClassListResourceK8sIoV1beta2Resource(
    String name, {
    DeviceClassListResourceK8sIoV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1beta2:DeviceClassList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<DeviceClassResourceK8sIoV1beta2Resource>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
