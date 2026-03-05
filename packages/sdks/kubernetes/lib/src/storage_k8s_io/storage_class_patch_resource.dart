import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'storage_class_patch_storage_k8s_io_v1beta1_args.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
///
/// StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
class StorageClassPatchResource extends pulumi.CustomResource {
  /// AllowVolumeExpansion shows whether the storage class allow volume expand
  late final pulumi.Output<bool?> allowVolumeExpansion;

  /// Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
  late final pulumi.Output<List<Map<String, dynamic>>?> allowedTopologies;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;

  /// Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
  late final pulumi.Output<List<String>?> mountOptions;

  /// Parameters holds the parameters for the provisioner that should create volumes of this storage class.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// Provisioner indicates the type of the provisioner.
  late final pulumi.Output<String?> provisioner;

  /// Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
  late final pulumi.Output<String?> reclaimPolicy;

  /// VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
  late final pulumi.Output<String?> volumeBindingMode;

  /// Creates a new [StorageClassPatchResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageClassPatchResource]. {@macro pulumi_storage_k8s_io_v1beta1_storage_class_patch_storage_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageClassPatchResource(
    String name, {
    StorageClassPatchStorageK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:storage.k8s.io/v1beta1:StorageClassPatch',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowVolumeExpansion = registerOutput<bool?>('allowVolumeExpansion');
    allowedTopologies = registerOutput<List<Map<String, dynamic>>?>(
      'allowedTopologies',
    );
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ObjectMetaPatch.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    mountOptions = registerOutput<List<String>?>('mountOptions');
    parameters = registerOutput<Map<String, String>?>('parameters');
    provisioner = registerOutput<String?>('provisioner');
    reclaimPolicy = registerOutput<String?>('reclaimPolicy');
    volumeBindingMode = registerOutput<String?>('volumeBindingMode');
  }
}
