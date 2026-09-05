import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/topology_selector_term.dart';
import '../meta/object_meta.dart';
import 'storage_class_storage_k8s_io_v1beta1_args.dart';

/// StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
///
/// StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
class StorageClassResource extends pulumi.CustomResource {
  /// AllowVolumeExpansion shows whether the storage class allow volume expand
  late final pulumi.Output<bool> allowVolumeExpansion;
  /// Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
  late final pulumi.Output<List<TopologySelectorTerm>> allowedTopologies;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
  late final pulumi.Output<List<String>> mountOptions;
  /// Parameters holds the parameters for the provisioner that should create volumes of this storage class.
  late final pulumi.Output<Map<String, String>> parameters;
  /// Provisioner indicates the type of the provisioner.
  late final pulumi.Output<String> provisioner;
  /// Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
  late final pulumi.Output<String> reclaimPolicy;
  /// VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
  late final pulumi.Output<String> volumeBindingMode;

  /// Creates a new [StorageClassResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageClassResource]. {@macro pulumi_storage_k8s_io_v1beta1_storage_class_storage_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageClassResource(
    String name, {
    StorageClassStorageK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:storage.k8s.io/v1beta1:StorageClass',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowVolumeExpansion = registerOutput<bool>('allowVolumeExpansion');
    allowedTopologies = registerOutput<List<TopologySelectorTerm>>('allowedTopologies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopologySelectorTerm>(guardedValue, (value) => TopologySelectorTerm.fromMap((value as Map).cast<String, dynamic>())); });
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mountOptions = registerOutput<List<String>>('mountOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    parameters = registerOutput<Map<String, String>>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    provisioner = registerOutput<String>('provisioner');
    reclaimPolicy = registerOutput<String>('reclaimPolicy');
    volumeBindingMode = registerOutput<String>('volumeBindingMode');
  }

  /// Creates a typed reference to an existing [StorageClassResource] resource.
  StorageClassResource.reference(String urn)
    : super(
        'kubernetes:storage.k8s.io/v1beta1:StorageClass',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowVolumeExpansion = registerOutput<bool>('allowVolumeExpansion');
    allowedTopologies = registerOutput<List<TopologySelectorTerm>>('allowedTopologies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopologySelectorTerm>(guardedValue, (value) => TopologySelectorTerm.fromMap((value as Map).cast<String, dynamic>())); });
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mountOptions = registerOutput<List<String>>('mountOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    parameters = registerOutput<Map<String, String>>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    provisioner = registerOutput<String>('provisioner');
    reclaimPolicy = registerOutput<String>('reclaimPolicy');
    volumeBindingMode = registerOutput<String>('volumeBindingMode');
  }
}
