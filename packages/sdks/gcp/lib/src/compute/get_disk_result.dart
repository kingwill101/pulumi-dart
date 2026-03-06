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
  final String accessMode;
  final String architecture;
  final List<GetDiskAsyncPrimaryDisk> asyncPrimaryDisks;
  final bool createSnapshotBeforeDestroy;
  final String createSnapshotBeforeDestroyPrefix;
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// The optional description of this resource.
  final String description;
  final List<GetDiskDiskEncryptionKey> diskEncryptionKeys;
  final String diskId;
  final Map<String, String> effectiveLabels;
  final bool enableConfidentialCompute;
  final List<GetDiskGuestOsFeature> guestOsFeatures;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The image from which to initialize this disk.
  final String image;
  final String interface;
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  final String labelFingerprint;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final Map<String, String> labels;
  /// Last attach timestamp in RFC3339 text format.
  final String lastAttachTimestamp;
  /// Last detach timestamp in RFC3339 text format.
  final String lastDetachTimestamp;
  final List<String> licenses;
  final bool multiWriter;
  final String name;
  final List<GetDiskParam> params;
  /// Physical block size of the persistent disk, in bytes.
  final int physicalBlockSizeBytes;
  final String? project;
  final int provisionedIops;
  final int provisionedThroughput;
  final Map<String, String> pulumiLabels;
  final List<String> resourcePolicies;
  /// The URI of the created resource.
  final String selfLink;
  /// Size of the persistent disk, specified in GB.
  final int size;
  /// The source snapshot used to create this disk.
  final String snapshot;
  final String sourceDisk;
  final String sourceDiskId;
  /// The customer-supplied encryption key of the source image.
  final List<GetDiskSourceImageEncryptionKey> sourceImageEncryptionKeys;
  /// The ID value of the image used to create this disk. This value
  /// identifies the exact image that was used to create this persistent
  /// disk. For example, if you created the persistent disk from an image
  /// that was later deleted and recreated under the same name, the source
  /// image ID would identify the exact version of the image that was used.
  final String sourceImageId;
  final String sourceInstantSnapshot;
  final String sourceInstantSnapshotId;
  /// The customer-supplied encryption key of the source snapshot.
  final List<GetDiskSourceSnapshotEncryptionKey> sourceSnapshotEncryptionKeys;
  /// The unique ID of the snapshot used to create this disk. This value
  /// identifies the exact snapshot that was used to create this persistent
  /// disk. For example, if you created the persistent disk from a snapshot
  /// that was later deleted and recreated under the same name, the source
  /// snapshot ID would identify the exact version of the snapshot that was
  /// used.
  final String sourceSnapshotId;
  final String sourceStorageObject;
  final String storagePool;
  /// URL of the disk type resource describing which disk type to use to
  /// create the disk.
  final String type;
  /// Links to the users of the disk (attached instances) in form:
  /// project/zones/zone/instances/instance
  final List<String> users;
  /// A reference to the zone where the disk resides.
  final String? zone;

  /// Creates a new [GetDiskResult].
  /// [accessMode] Required.
  /// [architecture] Required.
  /// [asyncPrimaryDisks] Required.
  /// [createSnapshotBeforeDestroy] Required.
  /// [createSnapshotBeforeDestroyPrefix] Required.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] The optional description of this resource.
  /// [diskEncryptionKeys] Required.
  /// [diskId] Required.
  /// [effectiveLabels] Required.
  /// [enableConfidentialCompute] Required.
  /// [guestOsFeatures] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [image] The image from which to initialize this disk.
  /// [interface] Required.
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource.  Used
  /// [labels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [lastAttachTimestamp] Last attach timestamp in RFC3339 text format.
  /// [lastDetachTimestamp] Last detach timestamp in RFC3339 text format.
  /// [licenses] Required.
  /// [multiWriter] Required.
  /// [name] Required.
  /// [params] Required.
  /// [physicalBlockSizeBytes] Physical block size of the persistent disk, in bytes.
  /// [project] Optional.
  /// [provisionedIops] Required.
  /// [provisionedThroughput] Required.
  /// [pulumiLabels] Required.
  /// [resourcePolicies] Required.
  /// [selfLink] The URI of the created resource.
  /// [size] Size of the persistent disk, specified in GB.
  /// [snapshot] The source snapshot used to create this disk.
  /// [sourceDisk] Required.
  /// [sourceDiskId] Required.
  /// [sourceImageEncryptionKeys] The customer-supplied encryption key of the source image.
  /// [sourceImageId] The ID value of the image used to create this disk. This value
  /// [sourceInstantSnapshot] Required.
  /// [sourceInstantSnapshotId] Required.
  /// [sourceSnapshotEncryptionKeys] The customer-supplied encryption key of the source snapshot.
  /// [sourceSnapshotId] The unique ID of the snapshot used to create this disk. This value
  /// [sourceStorageObject] Required.
  /// [storagePool] Required.
  /// [type] URL of the disk type resource describing which disk type to use to
  /// [users] Links to the users of the disk (attached instances) in form:
  /// [zone] A reference to the zone where the disk resides.
  const GetDiskResult({
    required this.accessMode,
    required this.architecture,
    required this.asyncPrimaryDisks,
    required this.createSnapshotBeforeDestroy,
    required this.createSnapshotBeforeDestroyPrefix,
    required this.creationTimestamp,
    required this.description,
    required this.diskEncryptionKeys,
    required this.diskId,
    required this.effectiveLabels,
    required this.enableConfidentialCompute,
    required this.guestOsFeatures,
    required this.id,
    required this.image,
    required this.interface,
    required this.labelFingerprint,
    required this.labels,
    required this.lastAttachTimestamp,
    required this.lastDetachTimestamp,
    required this.licenses,
    required this.multiWriter,
    required this.name,
    required this.params,
    required this.physicalBlockSizeBytes,
    this.project,
    required this.provisionedIops,
    required this.provisionedThroughput,
    required this.pulumiLabels,
    required this.resourcePolicies,
    required this.selfLink,
    required this.size,
    required this.snapshot,
    required this.sourceDisk,
    required this.sourceDiskId,
    required this.sourceImageEncryptionKeys,
    required this.sourceImageId,
    required this.sourceInstantSnapshot,
    required this.sourceInstantSnapshotId,
    required this.sourceSnapshotEncryptionKeys,
    required this.sourceSnapshotId,
    required this.sourceStorageObject,
    required this.storagePool,
    required this.type,
    required this.users,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': accessMode,
      'architecture': architecture,
      'asyncPrimaryDisks': pulumi.Input.encodeList<GetDiskAsyncPrimaryDisk, Map<String, dynamic>>(asyncPrimaryDisks, (value) => value.toMap()),
      'createSnapshotBeforeDestroy': createSnapshotBeforeDestroy,
      'createSnapshotBeforeDestroyPrefix': createSnapshotBeforeDestroyPrefix,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'diskEncryptionKeys': pulumi.Input.encodeList<GetDiskDiskEncryptionKey, Map<String, dynamic>>(diskEncryptionKeys, (value) => value.toMap()),
      'diskId': diskId,
      'effectiveLabels': effectiveLabels,
      'enableConfidentialCompute': enableConfidentialCompute,
      'guestOsFeatures': pulumi.Input.encodeList<GetDiskGuestOsFeature, Map<String, dynamic>>(guestOsFeatures, (value) => value.toMap()),
      'id': id,
      'image': image,
      'interface': interface,
      'labelFingerprint': labelFingerprint,
      'labels': labels,
      'lastAttachTimestamp': lastAttachTimestamp,
      'lastDetachTimestamp': lastDetachTimestamp,
      'licenses': licenses,
      'multiWriter': multiWriter,
      'name': name,
      'params': pulumi.Input.encodeList<GetDiskParam, Map<String, dynamic>>(params, (value) => value.toMap()),
      'physicalBlockSizeBytes': physicalBlockSizeBytes,
      'project': ?project,
      'provisionedIops': provisionedIops,
      'provisionedThroughput': provisionedThroughput,
      'pulumiLabels': pulumiLabels,
      'resourcePolicies': resourcePolicies,
      'selfLink': selfLink,
      'size': size,
      'snapshot': snapshot,
      'sourceDisk': sourceDisk,
      'sourceDiskId': sourceDiskId,
      'sourceImageEncryptionKeys': pulumi.Input.encodeList<GetDiskSourceImageEncryptionKey, Map<String, dynamic>>(sourceImageEncryptionKeys, (value) => value.toMap()),
      'sourceImageId': sourceImageId,
      'sourceInstantSnapshot': sourceInstantSnapshot,
      'sourceInstantSnapshotId': sourceInstantSnapshotId,
      'sourceSnapshotEncryptionKeys': pulumi.Input.encodeList<GetDiskSourceSnapshotEncryptionKey, Map<String, dynamic>>(sourceSnapshotEncryptionKeys, (value) => value.toMap()),
      'sourceSnapshotId': sourceSnapshotId,
      'sourceStorageObject': sourceStorageObject,
      'storagePool': storagePool,
      'type': type,
      'users': users,
      'zone': ?zone,
    };
  }

  factory GetDiskResult.fromMap(Map<String, dynamic> map) {
    return GetDiskResult(
      accessMode: map['accessMode'] as String,
      architecture: map['architecture'] as String,
      asyncPrimaryDisks: pulumi.Input.decodeList<GetDiskAsyncPrimaryDisk>(map['asyncPrimaryDisks']!, (value) => GetDiskAsyncPrimaryDisk.fromMap((value as Map).cast<String, dynamic>())),
      createSnapshotBeforeDestroy: map['createSnapshotBeforeDestroy'] as bool,
      createSnapshotBeforeDestroyPrefix: map['createSnapshotBeforeDestroyPrefix'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      diskEncryptionKeys: pulumi.Input.decodeList<GetDiskDiskEncryptionKey>(map['diskEncryptionKeys']!, (value) => GetDiskDiskEncryptionKey.fromMap((value as Map).cast<String, dynamic>())),
      diskId: map['diskId'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
      guestOsFeatures: pulumi.Input.decodeList<GetDiskGuestOsFeature>(map['guestOsFeatures']!, (value) => GetDiskGuestOsFeature.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      image: map['image'] as String,
      interface: map['interface'] as String,
      labelFingerprint: map['labelFingerprint'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      lastAttachTimestamp: map['lastAttachTimestamp'] as String,
      lastDetachTimestamp: map['lastDetachTimestamp'] as String,
      licenses: (map['licenses'] as List).cast<String>(),
      multiWriter: map['multiWriter'] as bool,
      name: map['name'] as String,
      params: pulumi.Input.decodeList<GetDiskParam>(map['params']!, (value) => GetDiskParam.fromMap((value as Map).cast<String, dynamic>())),
      physicalBlockSizeBytes: map['physicalBlockSizeBytes'] as int,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisionedIops: map['provisionedIops'] as int,
      provisionedThroughput: map['provisionedThroughput'] as int,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      resourcePolicies: (map['resourcePolicies'] as List).cast<String>(),
      selfLink: map['selfLink'] as String,
      size: map['size'] as int,
      snapshot: map['snapshot'] as String,
      sourceDisk: map['sourceDisk'] as String,
      sourceDiskId: map['sourceDiskId'] as String,
      sourceImageEncryptionKeys: pulumi.Input.decodeList<GetDiskSourceImageEncryptionKey>(map['sourceImageEncryptionKeys']!, (value) => GetDiskSourceImageEncryptionKey.fromMap((value as Map).cast<String, dynamic>())),
      sourceImageId: map['sourceImageId'] as String,
      sourceInstantSnapshot: map['sourceInstantSnapshot'] as String,
      sourceInstantSnapshotId: map['sourceInstantSnapshotId'] as String,
      sourceSnapshotEncryptionKeys: pulumi.Input.decodeList<GetDiskSourceSnapshotEncryptionKey>(map['sourceSnapshotEncryptionKeys']!, (value) => GetDiskSourceSnapshotEncryptionKey.fromMap((value as Map).cast<String, dynamic>())),
      sourceSnapshotId: map['sourceSnapshotId'] as String,
      sourceStorageObject: map['sourceStorageObject'] as String,
      storagePool: map['storagePool'] as String,
      type: map['type'] as String,
      users: (map['users'] as List).cast<String>(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

