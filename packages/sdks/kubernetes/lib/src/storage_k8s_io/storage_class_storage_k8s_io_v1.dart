import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'storage_class_args.dart';

/// StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
///
/// StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
class StorageClassStorageK8sIoV1 extends pulumi.CustomResource {
  /// allowVolumeExpansion shows whether the storage class allow volume expand.
  late final pulumi.Output<bool> allowVolumeExpansion;

  /// allowedTopologies restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
  late final pulumi.Output<List<Map<String, dynamic>>> allowedTopologies;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// mountOptions controls the mountOptions for dynamically provisioned PersistentVolumes of this storage class. e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
  late final pulumi.Output<List<String>> mountOptions;

  /// parameters holds the parameters for the provisioner that should create volumes of this storage class.
  late final pulumi.Output<Map<String, String>> parameters;

  /// provisioner indicates the type of the provisioner.
  late final pulumi.Output<String> provisioner;

  /// reclaimPolicy controls the reclaimPolicy for dynamically provisioned PersistentVolumes of this storage class. Defaults to Delete.
  late final pulumi.Output<String> reclaimPolicy;

  /// volumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
  late final pulumi.Output<String> volumeBindingMode;

  /// Creates a new [StorageClassStorageK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageClassStorageK8sIoV1]. {@macro pulumi_storage_k8s_io_v1_storage_class_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageClassStorageK8sIoV1(
    String name, {
    StorageClassArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:storage.k8s.io/v1:StorageClass',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowVolumeExpansion = registerOutput<bool>('allowVolumeExpansion');
    allowedTopologies = registerOutput<List<Map<String, dynamic>>>(
      'allowedTopologies',
    );
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ObjectMeta.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    mountOptions = registerOutput<List<String>>('mountOptions');
    parameters = registerOutput<Map<String, String>>('parameters');
    provisioner = registerOutput<String>('provisioner');
    reclaimPolicy = registerOutput<String>('reclaimPolicy');
    volumeBindingMode = registerOutput<String>('volumeBindingMode');
  }
}
