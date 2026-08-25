// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_disk_async_primary_disk.dart';
import 'get_disk_disk_encryption_key.dart';
import 'get_disk_guest_os_feature.dart';
import 'get_disk_param.dart';
import 'get_disk_source_image_encryption_key.dart';
import 'get_disk_source_snapshot_encryption_key.dart';

/// Result data returned by getDisk.
class GetDiskResult {
  final String? accessMode;
  final String? architecture;
  final List<GetDiskAsyncPrimaryDisk>? asyncPrimaryDisks;
  final bool? createSnapshotBeforeDestroy;
  final String? createSnapshotBeforeDestroyPrefix;
  /// Creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  final String? deletionPolicy;
  /// The optional description of this resource.
  final String? description;
  final List<GetDiskDiskEncryptionKey>? diskEncryptionKeys;
  final String? diskId;
  final Map<String, String>? effectiveLabels;
  final bool? enableConfidentialCompute;
  final bool? eraseWindowsVssSignature;
  final List<GetDiskGuestOsFeature>? guestOsFeatures;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The image from which to initialize this disk.
  final String? image;
  final String? interface;
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  final String? labelFingerprint;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final Map<String, String>? labels;
  /// Last attach timestamp in RFC3339 text format.
  final String? lastAttachTimestamp;
  /// Last detach timestamp in RFC3339 text format.
  final String? lastDetachTimestamp;
  final List<String>? licenses;
  final bool? multiWriter;
  final String? name;
  final List<GetDiskParam>? params;
  /// Physical block size of the persistent disk, in bytes.
  final int? physicalBlockSizeBytes;
  final String? project;
  final int? provisionedIops;
  final int? provisionedThroughput;
  final Map<String, String>? pulumiLabels;
  final List<String>? resourcePolicies;
  /// The URI of the created resource.
  final String? selfLink;
  /// Size of the persistent disk, specified in GB.
  final int? size;
  /// The source snapshot used to create this disk.
  final String? snapshot;
  final String? sourceDisk;
  final String? sourceDiskId;
  /// The customer-supplied encryption key of the source image.
  final List<GetDiskSourceImageEncryptionKey>? sourceImageEncryptionKeys;
  /// The ID value of the image used to create this disk. This value
  /// identifies the exact image that was used to create this persistent
  /// disk. For example, if you created the persistent disk from an image
  /// that was later deleted and recreated under the same name, the source
  /// image ID would identify the exact version of the image that was used.
  final String? sourceImageId;
  final String? sourceInstantSnapshot;
  final String? sourceInstantSnapshotId;
  /// The customer-supplied encryption key of the source snapshot.
  final List<GetDiskSourceSnapshotEncryptionKey>? sourceSnapshotEncryptionKeys;
  /// The unique ID of the snapshot used to create this disk. This value
  /// identifies the exact snapshot that was used to create this persistent
  /// disk. For example, if you created the persistent disk from a snapshot
  /// that was later deleted and recreated under the same name, the source
  /// snapshot ID would identify the exact version of the snapshot that was
  /// used.
  final String? sourceSnapshotId;
  final String? sourceStorageObject;
  final String? storagePool;
  /// URL of the disk type resource describing which disk type to use to
  /// create the disk.
  final String? type;
  /// Links to the users of the disk (attached instances) in form:
  /// project/zones/zone/instances/instance
  final List<String>? users;
  /// A reference to the zone where the disk resides.
  final String? zone;

  /// Creates a new [GetDiskResult].
  /// [accessMode] Optional.
  /// [architecture] Optional.
  /// [asyncPrimaryDisks] Optional.
  /// [createSnapshotBeforeDestroy] Optional.
  /// [createSnapshotBeforeDestroyPrefix] Optional.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Optional.
  /// [description] The optional description of this resource.
  /// [diskEncryptionKeys] Optional.
  /// [diskId] Optional.
  /// [effectiveLabels] Optional.
  /// [enableConfidentialCompute] Optional.
  /// [eraseWindowsVssSignature] Optional.
  /// [guestOsFeatures] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [image] The image from which to initialize this disk.
  /// [interface] Optional.
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource.  Used
  /// [labels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [lastAttachTimestamp] Last attach timestamp in RFC3339 text format.
  /// [lastDetachTimestamp] Last detach timestamp in RFC3339 text format.
  /// [licenses] Optional.
  /// [multiWriter] Optional.
  /// [name] Optional.
  /// [params] Optional.
  /// [physicalBlockSizeBytes] Physical block size of the persistent disk, in bytes.
  /// [project] Optional.
  /// [provisionedIops] Optional.
  /// [provisionedThroughput] Optional.
  /// [pulumiLabels] Optional.
  /// [resourcePolicies] Optional.
  /// [selfLink] The URI of the created resource.
  /// [size] Size of the persistent disk, specified in GB.
  /// [snapshot] The source snapshot used to create this disk.
  /// [sourceDisk] Optional.
  /// [sourceDiskId] Optional.
  /// [sourceImageEncryptionKeys] The customer-supplied encryption key of the source image.
  /// [sourceImageId] The ID value of the image used to create this disk. This value
  /// [sourceInstantSnapshot] Optional.
  /// [sourceInstantSnapshotId] Optional.
  /// [sourceSnapshotEncryptionKeys] The customer-supplied encryption key of the source snapshot.
  /// [sourceSnapshotId] The unique ID of the snapshot used to create this disk. This value
  /// [sourceStorageObject] Optional.
  /// [storagePool] Optional.
  /// [type] URL of the disk type resource describing which disk type to use to
  /// [users] Links to the users of the disk (attached instances) in form:
  /// [zone] A reference to the zone where the disk resides.
  const GetDiskResult({
    this.accessMode,
    this.architecture,
    this.asyncPrimaryDisks,
    this.createSnapshotBeforeDestroy,
    this.createSnapshotBeforeDestroyPrefix,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.diskEncryptionKeys,
    this.diskId,
    this.effectiveLabels,
    this.enableConfidentialCompute,
    this.eraseWindowsVssSignature,
    this.guestOsFeatures,
    this.id,
    this.image,
    this.interface,
    this.labelFingerprint,
    this.labels,
    this.lastAttachTimestamp,
    this.lastDetachTimestamp,
    this.licenses,
    this.multiWriter,
    this.name,
    this.params,
    this.physicalBlockSizeBytes,
    this.project,
    this.provisionedIops,
    this.provisionedThroughput,
    this.pulumiLabels,
    this.resourcePolicies,
    this.selfLink,
    this.size,
    this.snapshot,
    this.sourceDisk,
    this.sourceDiskId,
    this.sourceImageEncryptionKeys,
    this.sourceImageId,
    this.sourceInstantSnapshot,
    this.sourceInstantSnapshotId,
    this.sourceSnapshotEncryptionKeys,
    this.sourceSnapshotId,
    this.sourceStorageObject,
    this.storagePool,
    this.type,
    this.users,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'architecture': ?architecture,
      'asyncPrimaryDisks': ?(() { final guardedValue = asyncPrimaryDisks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDiskAsyncPrimaryDisk, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createSnapshotBeforeDestroy': ?createSnapshotBeforeDestroy,
      'createSnapshotBeforeDestroyPrefix': ?createSnapshotBeforeDestroyPrefix,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'diskEncryptionKeys': ?(() { final guardedValue = diskEncryptionKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDiskDiskEncryptionKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'diskId': ?diskId,
      'effectiveLabels': ?effectiveLabels,
      'enableConfidentialCompute': ?enableConfidentialCompute,
      'eraseWindowsVssSignature': ?eraseWindowsVssSignature,
      'guestOsFeatures': ?(() { final guardedValue = guestOsFeatures; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDiskGuestOsFeature, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'image': ?image,
      'interface': ?interface,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'lastAttachTimestamp': ?lastAttachTimestamp,
      'lastDetachTimestamp': ?lastDetachTimestamp,
      'licenses': ?licenses,
      'multiWriter': ?multiWriter,
      'name': ?name,
      'params': ?(() { final guardedValue = params; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDiskParam, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'physicalBlockSizeBytes': ?physicalBlockSizeBytes,
      'project': ?project,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'pulumiLabels': ?pulumiLabels,
      'resourcePolicies': ?resourcePolicies,
      'selfLink': ?selfLink,
      'size': ?size,
      'snapshot': ?snapshot,
      'sourceDisk': ?sourceDisk,
      'sourceDiskId': ?sourceDiskId,
      'sourceImageEncryptionKeys': ?(() { final guardedValue = sourceImageEncryptionKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDiskSourceImageEncryptionKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sourceImageId': ?sourceImageId,
      'sourceInstantSnapshot': ?sourceInstantSnapshot,
      'sourceInstantSnapshotId': ?sourceInstantSnapshotId,
      'sourceSnapshotEncryptionKeys': ?(() { final guardedValue = sourceSnapshotEncryptionKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDiskSourceSnapshotEncryptionKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sourceSnapshotId': ?sourceSnapshotId,
      'sourceStorageObject': ?sourceStorageObject,
      'storagePool': ?storagePool,
      'type': ?type,
      'users': ?users,
      'zone': ?zone,
    };
  }

  factory GetDiskResult.fromMap(Map<String, dynamic> map) {
    return GetDiskResult(
      accessMode: (() { final guardedValue = map['accessMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return guardedValue as String; })(),
      asyncPrimaryDisks: (() { final guardedValue = map['asyncPrimaryDisks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDiskAsyncPrimaryDisk>(guardedValue, (value) => GetDiskAsyncPrimaryDisk.fromMap((value as Map).cast<String, dynamic>())); })(),
      createSnapshotBeforeDestroy: (() { final guardedValue = map['createSnapshotBeforeDestroy']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createSnapshotBeforeDestroyPrefix: (() { final guardedValue = map['createSnapshotBeforeDestroyPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskEncryptionKeys: (() { final guardedValue = map['diskEncryptionKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDiskDiskEncryptionKey>(guardedValue, (value) => GetDiskDiskEncryptionKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      diskId: (() { final guardedValue = map['diskId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      enableConfidentialCompute: (() { final guardedValue = map['enableConfidentialCompute']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      eraseWindowsVssSignature: (() { final guardedValue = map['eraseWindowsVssSignature']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      guestOsFeatures: (() { final guardedValue = map['guestOsFeatures']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDiskGuestOsFeature>(guardedValue, (value) => GetDiskGuestOsFeature.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interface: (() { final guardedValue = map['interface']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      lastAttachTimestamp: (() { final guardedValue = map['lastAttachTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastDetachTimestamp: (() { final guardedValue = map['lastDetachTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenses: (() { final guardedValue = map['licenses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      multiWriter: (() { final guardedValue = map['multiWriter']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDiskParam>(guardedValue, (value) => GetDiskParam.fromMap((value as Map).cast<String, dynamic>())); })(),
      physicalBlockSizeBytes: (() { final guardedValue = map['physicalBlockSizeBytes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisionedIops: (() { final guardedValue = map['provisionedIops']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      provisionedThroughput: (() { final guardedValue = map['provisionedThroughput']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      snapshot: (() { final guardedValue = map['snapshot']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceDisk: (() { final guardedValue = map['sourceDisk']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceDiskId: (() { final guardedValue = map['sourceDiskId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceImageEncryptionKeys: (() { final guardedValue = map['sourceImageEncryptionKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDiskSourceImageEncryptionKey>(guardedValue, (value) => GetDiskSourceImageEncryptionKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      sourceImageId: (() { final guardedValue = map['sourceImageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceInstantSnapshot: (() { final guardedValue = map['sourceInstantSnapshot']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceInstantSnapshotId: (() { final guardedValue = map['sourceInstantSnapshotId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceSnapshotEncryptionKeys: (() { final guardedValue = map['sourceSnapshotEncryptionKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDiskSourceSnapshotEncryptionKey>(guardedValue, (value) => GetDiskSourceSnapshotEncryptionKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      sourceSnapshotId: (() { final guardedValue = map['sourceSnapshotId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceStorageObject: (() { final guardedValue = map['sourceStorageObject']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storagePool: (() { final guardedValue = map['storagePool']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
