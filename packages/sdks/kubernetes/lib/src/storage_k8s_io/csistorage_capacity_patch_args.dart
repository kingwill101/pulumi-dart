// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector_patch.dart';
import '../meta/object_meta_patch.dart';

/// {@template pulumi_storage_k8s_io_v1_csistorage_capacity_patch_args_doc}
/// The set of arguments for CSIStorageCapacityPatch.
/// {@endtemplate}
/// {@macro pulumi_storage_k8s_io_v1_csistorage_capacity_patch_args_doc}
class CSIStorageCapacityPatchArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// capacity is the value reported by the CSI driver in its GetCapacityResponse for a GetCapacityRequest with topology and parameters that match the previous fields.
  ///
  /// The semantic is currently (CSI spec 1.2) defined as: The available capacity, in bytes, of the storage that can be used to provision volumes. If not set, that information is currently unavailable.
  final pulumi.Input<String>? capacity;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// maximumVolumeSize is the value reported by the CSI driver in its GetCapacityResponse for a GetCapacityRequest with topology and parameters that match the previous fields.
  ///
  /// This is defined since CSI spec 1.4.0 as the largest size that may be used in a CreateVolumeRequest.capacity_range.required_bytes field to create a volume with the same parameters as those in GetCapacityRequest. The corresponding value in the Kubernetes API is ResourceRequirements.Requests in a volume claim.
  final pulumi.Input<String>? maximumVolumeSize;
  /// Standard object's metadata. The name has no particular meaning. It must be a DNS subdomain (dots allowed, 253 characters). To ensure that there are no conflicts with other CSI drivers on the cluster, the recommendation is to use csisc-<uuid>, a generated name, or a reverse-domain name which ends with the unique CSI driver name.
  ///
  /// Objects are namespaced.
  ///
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// nodeTopology defines which nodes have access to the storage for which capacity was reported. If not set, the storage is not accessible from any node in the cluster. If empty, the storage is accessible from all nodes. This field is immutable.
  final pulumi.Input<LabelSelectorPatch>? nodeTopology;
  /// storageClassName represents the name of the StorageClass that the reported capacity applies to. It must meet the same requirements as the name of a StorageClass object (non-empty, DNS subdomain). If that object no longer exists, the CSIStorageCapacity object is obsolete and should be removed by its creator. This field is immutable.
  final pulumi.Input<String>? storageClassName;

  /// Creates a new [CSIStorageCapacityPatchArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [capacity] capacity is the value reported by the CSI driver in its GetCapacityResponse for a GetCapacityRequest with topology and parameters that match the previous fields.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [maximumVolumeSize] maximumVolumeSize is the value reported by the CSI driver in its GetCapacityResponse for a GetCapacityRequest with topology and parameters that match the previous fields.
  /// [metadata] Standard object's metadata. The name has no particular meaning. It must be a DNS subdomain (dots allowed, 253 characters). To ensure that there are no conflicts with other CSI drivers on the cluster, the recommendation is to use csisc-<uuid>, a generated name, or a reverse-domain name which ends with the unique CSI driver name.
  /// [nodeTopology] nodeTopology defines which nodes have access to the storage for which capacity was reported. If not set, the storage is not accessible from any node in the cluster. If empty, the storage is accessible from all nodes. This field is immutable.
  /// [storageClassName] storageClassName represents the name of the StorageClass that the reported capacity applies to. It must meet the same requirements as the name of a StorageClass object (non-empty, DNS subdomain). If that object no longer exists, the CSIStorageCapacity object is obsolete and should be removed by its creator. This field is immutable.
  CSIStorageCapacityPatchArgs({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? capacity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? maximumVolumeSize,
    pulumi.Output<ObjectMetaPatch>? metadata,
    pulumi.Output<LabelSelectorPatch>? nodeTopology,
    pulumi.Output<String>? storageClassName,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      capacity = pulumi.Input.asOptionalInput<String>(capacity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      maximumVolumeSize = pulumi.Input.asOptionalInput<String>(maximumVolumeSize),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      nodeTopology = pulumi.Input.asOptionalInput<LabelSelectorPatch>(nodeTopology),
      storageClassName = pulumi.Input.asOptionalInput<String>(storageClassName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'capacity': ?capacity,
      'kind': ?kind,
      'maximumVolumeSize': ?maximumVolumeSize,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'nodeTopology': ?pulumi.Input.mapOptionalInputValue<LabelSelectorPatch, Map<String, dynamic>>(nodeTopology, (value) => value.toMap()),
      'storageClassName': ?storageClassName,
    };
  }

  factory CSIStorageCapacityPatchArgs.fromMap(Map<String, dynamic> map) {
    return CSIStorageCapacityPatchArgs(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      capacity: map['capacity'] == null ? null : pulumi.Output.create<String>(map['capacity'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      maximumVolumeSize: map['maximumVolumeSize'] == null ? null : pulumi.Output.create<String>(map['maximumVolumeSize'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMetaPatch>(ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      nodeTopology: map['nodeTopology'] == null ? null : pulumi.Output.create<LabelSelectorPatch>(LabelSelectorPatch.fromMap((map['nodeTopology'] as Map).cast<String, dynamic>())),
      storageClassName: map['storageClassName'] == null ? null : pulumi.Output.create<String>(map['storageClassName'] as String),
    );
  }
}

