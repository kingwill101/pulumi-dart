// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_disk_async_primary_disk.dart';
import 'get_region_disk_disk_encryption_key.dart';
import 'get_region_disk_guest_os_feature.dart';
import 'get_region_disk_source_snapshot_encryption_key.dart';

/// Result data returned by getRegionDisk.
class GetRegionDiskResult {
  final String accessMode;
  final List<GetRegionDiskAsyncPrimaryDisk> asyncPrimaryDisks;
  final bool createSnapshotBeforeDestroy;
  final String createSnapshotBeforeDestroyPrefix;
  final String creationTimestamp;
  final String description;
  final List<GetRegionDiskDiskEncryptionKey> diskEncryptionKeys;
  final String diskId;
  final Map<String, String> effectiveLabels;
  final List<GetRegionDiskGuestOsFeature> guestOsFeatures;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String interface;
  final String labelFingerprint;
  final Map<String, String> labels;
  final String lastAttachTimestamp;
  final String lastDetachTimestamp;
  final List<String> licenses;
  final String name;
  final int physicalBlockSizeBytes;
  final String? project;
  final int provisionedIops;
  final int provisionedThroughput;
  final Map<String, String> pulumiLabels;
  final String? region;
  final List<String> replicaZones;
  final String selfLink;
  final int size;
  final String snapshot;
  final String sourceDisk;
  final String sourceDiskId;
  final List<GetRegionDiskSourceSnapshotEncryptionKey> sourceSnapshotEncryptionKeys;
  final String sourceSnapshotId;
  final String type;
  final List<String> users;

  /// Creates a new [GetRegionDiskResult].
  /// [accessMode] Required.
  /// [asyncPrimaryDisks] Required.
  /// [createSnapshotBeforeDestroy] Required.
  /// [createSnapshotBeforeDestroyPrefix] Required.
  /// [creationTimestamp] Required.
  /// [description] Required.
  /// [diskEncryptionKeys] Required.
  /// [diskId] Required.
  /// [effectiveLabels] Required.
  /// [guestOsFeatures] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [interface] Required.
  /// [labelFingerprint] Required.
  /// [labels] Required.
  /// [lastAttachTimestamp] Required.
  /// [lastDetachTimestamp] Required.
  /// [licenses] Required.
  /// [name] Required.
  /// [physicalBlockSizeBytes] Required.
  /// [project] Optional.
  /// [provisionedIops] Required.
  /// [provisionedThroughput] Required.
  /// [pulumiLabels] Required.
  /// [region] Optional.
  /// [replicaZones] Required.
  /// [selfLink] Required.
  /// [size] Required.
  /// [snapshot] Required.
  /// [sourceDisk] Required.
  /// [sourceDiskId] Required.
  /// [sourceSnapshotEncryptionKeys] Required.
  /// [sourceSnapshotId] Required.
  /// [type] Required.
  /// [users] Required.
  GetRegionDiskResult({
    required this.accessMode,
    required this.asyncPrimaryDisks,
    required this.createSnapshotBeforeDestroy,
    required this.createSnapshotBeforeDestroyPrefix,
    required this.creationTimestamp,
    required this.description,
    required this.diskEncryptionKeys,
    required this.diskId,
    required this.effectiveLabels,
    required this.guestOsFeatures,
    required this.id,
    required this.interface,
    required this.labelFingerprint,
    required this.labels,
    required this.lastAttachTimestamp,
    required this.lastDetachTimestamp,
    required this.licenses,
    required this.name,
    required this.physicalBlockSizeBytes,
    this.project,
    required this.provisionedIops,
    required this.provisionedThroughput,
    required this.pulumiLabels,
    this.region,
    required this.replicaZones,
    required this.selfLink,
    required this.size,
    required this.snapshot,
    required this.sourceDisk,
    required this.sourceDiskId,
    required this.sourceSnapshotEncryptionKeys,
    required this.sourceSnapshotId,
    required this.type,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': accessMode,
      'asyncPrimaryDisks': pulumi.Input.encodeList<GetRegionDiskAsyncPrimaryDisk, Map<String, dynamic>>(asyncPrimaryDisks, (value) => value.toMap()),
      'createSnapshotBeforeDestroy': createSnapshotBeforeDestroy,
      'createSnapshotBeforeDestroyPrefix': createSnapshotBeforeDestroyPrefix,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'diskEncryptionKeys': pulumi.Input.encodeList<GetRegionDiskDiskEncryptionKey, Map<String, dynamic>>(diskEncryptionKeys, (value) => value.toMap()),
      'diskId': diskId,
      'effectiveLabels': effectiveLabels,
      'guestOsFeatures': pulumi.Input.encodeList<GetRegionDiskGuestOsFeature, Map<String, dynamic>>(guestOsFeatures, (value) => value.toMap()),
      'id': id,
      'interface': interface,
      'labelFingerprint': labelFingerprint,
      'labels': labels,
      'lastAttachTimestamp': lastAttachTimestamp,
      'lastDetachTimestamp': lastDetachTimestamp,
      'licenses': licenses,
      'name': name,
      'physicalBlockSizeBytes': physicalBlockSizeBytes,
      'project': ?project,
      'provisionedIops': provisionedIops,
      'provisionedThroughput': provisionedThroughput,
      'pulumiLabels': pulumiLabels,
      'region': ?region,
      'replicaZones': replicaZones,
      'selfLink': selfLink,
      'size': size,
      'snapshot': snapshot,
      'sourceDisk': sourceDisk,
      'sourceDiskId': sourceDiskId,
      'sourceSnapshotEncryptionKeys': pulumi.Input.encodeList<GetRegionDiskSourceSnapshotEncryptionKey, Map<String, dynamic>>(sourceSnapshotEncryptionKeys, (value) => value.toMap()),
      'sourceSnapshotId': sourceSnapshotId,
      'type': type,
      'users': users,
    };
  }

  factory GetRegionDiskResult.fromMap(Map<String, dynamic> map) {
    return GetRegionDiskResult(
      accessMode: map['accessMode'] as String,
      asyncPrimaryDisks: pulumi.Input.decodeList<GetRegionDiskAsyncPrimaryDisk>(map['asyncPrimaryDisks'], (value) => GetRegionDiskAsyncPrimaryDisk.fromMap((value as Map).cast<String, dynamic>())),
      createSnapshotBeforeDestroy: map['createSnapshotBeforeDestroy'] as bool,
      createSnapshotBeforeDestroyPrefix: map['createSnapshotBeforeDestroyPrefix'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      diskEncryptionKeys: pulumi.Input.decodeList<GetRegionDiskDiskEncryptionKey>(map['diskEncryptionKeys'], (value) => GetRegionDiskDiskEncryptionKey.fromMap((value as Map).cast<String, dynamic>())),
      diskId: map['diskId'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      guestOsFeatures: pulumi.Input.decodeList<GetRegionDiskGuestOsFeature>(map['guestOsFeatures'], (value) => GetRegionDiskGuestOsFeature.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      interface: map['interface'] as String,
      labelFingerprint: map['labelFingerprint'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      lastAttachTimestamp: map['lastAttachTimestamp'] as String,
      lastDetachTimestamp: map['lastDetachTimestamp'] as String,
      licenses: (map['licenses'] as List).cast<String>(),
      name: map['name'] as String,
      physicalBlockSizeBytes: map['physicalBlockSizeBytes'] as int,
      project: map['project'] == null ? null : map['project']! as String,
      provisionedIops: map['provisionedIops'] as int,
      provisionedThroughput: map['provisionedThroughput'] as int,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      region: map['region'] == null ? null : map['region']! as String,
      replicaZones: (map['replicaZones'] as List).cast<String>(),
      selfLink: map['selfLink'] as String,
      size: map['size'] as int,
      snapshot: map['snapshot'] as String,
      sourceDisk: map['sourceDisk'] as String,
      sourceDiskId: map['sourceDiskId'] as String,
      sourceSnapshotEncryptionKeys: pulumi.Input.decodeList<GetRegionDiskSourceSnapshotEncryptionKey>(map['sourceSnapshotEncryptionKeys'], (value) => GetRegionDiskSourceSnapshotEncryptionKey.fromMap((value as Map).cast<String, dynamic>())),
      sourceSnapshotId: map['sourceSnapshotId'] as String,
      type: map['type'] as String,
      users: (map['users'] as List).cast<String>(),
    );
  }
}

