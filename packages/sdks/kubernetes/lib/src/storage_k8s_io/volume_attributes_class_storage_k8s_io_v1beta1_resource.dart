import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'volume_attributes_class_storage_k8s_io_v1beta1_args.dart';

/// VolumeAttributesClass represents a specification of mutable volume attributes defined by the CSI driver. The class can be specified during dynamic provisioning of PersistentVolumeClaims, and changed in the PersistentVolumeClaim spec after provisioning.
class VolumeAttributesClassStorageK8sIoV1beta1Resource
    extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Name of the CSI driver This field is immutable.
  late final pulumi.Output<String> driverName;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// parameters hold volume attributes defined by the CSI driver. These values are opaque to the Kubernetes and are passed directly to the CSI driver. The underlying storage provider supports changing these attributes on an existing volume, however the parameters field itself is immutable. To invoke a volume update, a new VolumeAttributesClass should be created with new parameters, and the PersistentVolumeClaim should be updated to reference the new VolumeAttributesClass.
  ///
  /// This field is required and must contain at least one key/value pair. The keys cannot be empty, and the maximum number of parameters is 512, with a cumulative max size of 256K. If the CSI driver rejects invalid parameters, the target PersistentVolumeClaim will be set to an "Infeasible" state in the modifyVolumeStatus field.
  late final pulumi.Output<Map<String, String>> parameters;

  /// Creates a new [VolumeAttributesClassStorageK8sIoV1beta1Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeAttributesClassStorageK8sIoV1beta1Resource]. {@macro pulumi_storage_k8s_io_v1beta1_volume_attributes_class_storage_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeAttributesClassStorageK8sIoV1beta1Resource(
    String name, {
    VolumeAttributesClassStorageK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:storage.k8s.io/v1beta1:VolumeAttributesClass',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    driverName = registerOutput<String>('driverName');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    parameters = registerOutput<Map<String, String>>('parameters');
  }
}
