import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'device_class_list_resource_k8s_io_v1alpha3_args.dart';
import 'device_class_resource.dart';

/// DeviceClassList is a collection of classes.
class DeviceClassListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is the list of resource classes.
  late final pulumi.Output<List<DeviceClassResource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [DeviceClassListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeviceClassListResource]. {@macro pulumi_resource_k8s_io_v1alpha3_device_class_list_resource_k8s_io_v1alpha3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeviceClassListResource(
    String name, {
    DeviceClassListResourceK8sIoV1alpha3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha3:DeviceClassList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<DeviceClassResource>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
