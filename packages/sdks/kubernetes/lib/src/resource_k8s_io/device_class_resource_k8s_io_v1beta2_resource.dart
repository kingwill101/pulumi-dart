import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'device_class_resource_k8s_io_v1beta2_args.dart';
import 'device_class_spec_resource_k8s_io_v1beta2.dart';

/// DeviceClass is a vendor- or admin-provided resource that contains device configuration and selectors. It can be referenced in the device requests of a claim to apply these presets. Cluster scoped.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class DeviceClassResourceK8sIoV1beta2Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Spec defines what can be allocated and how to configure it.
  ///
  /// This is mutable. Consumers have to be prepared for classes changing at any time, either because they get updated or replaced. Claim allocations are done once based on whatever was set in classes at the time of allocation.
  ///
  /// Changing the spec automatically increments the metadata.generation number.
  late final pulumi.Output<DeviceClassSpecResourceK8sIoV1beta2> spec;

  /// Creates a new [DeviceClassResourceK8sIoV1beta2Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeviceClassResourceK8sIoV1beta2Resource]. {@macro pulumi_resource_k8s_io_v1beta2_device_class_resource_k8s_io_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeviceClassResourceK8sIoV1beta2Resource(
    String name, {
    DeviceClassResourceK8sIoV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1beta2:DeviceClass',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.spec = registerOutput<DeviceClassSpecResourceK8sIoV1beta2>('spec');
  }
}
