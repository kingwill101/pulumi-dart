// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_disk_async_primary_disk.dart';
import 'get_region_disk_disk_encryption_key.dart';
import 'get_region_disk_guest_os_feature.dart';
import 'get_region_disk_source_image_encryption_key.dart';
import 'get_region_disk_source_snapshot_encryption_key.dart';

/// Result data returned by getRegionDisk.
class GetRegionDiskResult {
  final String? accessMode;
  final List<GetRegionDiskAsyncPrimaryDisk>? asyncPrimaryDisks;
  final bool? createSnapshotBeforeDestroy;
  final String? createSnapshotBeforeDestroyPrefix;
  final String? creationTimestamp;
  final String? deletionPolicy;
  final String? description;
  final List<GetRegionDiskDiskEncryptionKey>? diskEncryptionKeys;
  final String? diskId;
  final Map<String, String>? effectiveLabels;
  final bool? eraseWindowsVssSignature;
  final List<GetRegionDiskGuestOsFeature>? guestOsFeatures;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? image;
  final String? interface;
  final String? labelFingerprint;
  final Map<String, String>? labels;
  final String? lastAttachTimestamp;
  final String? lastDetachTimestamp;
  final List<String>? licenses;
  final String? name;
  final int? physicalBlockSizeBytes;
  final String? project;
  final int? provisionedIops;
  final int? provisionedThroughput;
  final Map<String, String>? pulumiLabels;
  final String? region;
  final List<String>? replicaZones;
  final String? selfLink;
  final int? size;
  final String? snapshot;
  final String? sourceDisk;
  final String? sourceDiskId;
  final List<GetRegionDiskSourceImageEncryptionKey>? sourceImageEncryptionKeys;
  final String? sourceImageId;
  final List<GetRegionDiskSourceSnapshotEncryptionKey>? sourceSnapshotEncryptionKeys;
  final String? sourceSnapshotId;
  final String? type;
  final List<String>? users;

  /// Creates a new [GetRegionDiskResult].
  /// [accessMode] Optional.
  /// [asyncPrimaryDisks] Optional.
  /// [createSnapshotBeforeDestroy] Optional.
  /// [createSnapshotBeforeDestroyPrefix] Optional.
  /// [creationTimestamp] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [diskEncryptionKeys] Optional.
  /// [diskId] Optional.
  /// [effectiveLabels] Optional.
  /// [eraseWindowsVssSignature] Optional.
  /// [guestOsFeatures] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [image] Optional.
  /// [interface] Optional.
  /// [labelFingerprint] Optional.
  /// [labels] Optional.
  /// [lastAttachTimestamp] Optional.
  /// [lastDetachTimestamp] Optional.
  /// [licenses] Optional.
  /// [name] Optional.
  /// [physicalBlockSizeBytes] Optional.
  /// [project] Optional.
  /// [provisionedIops] Optional.
  /// [provisionedThroughput] Optional.
  /// [pulumiLabels] Optional.
  /// [region] Optional.
  /// [replicaZones] Optional.
  /// [selfLink] Optional.
  /// [size] Optional.
  /// [snapshot] Optional.
  /// [sourceDisk] Optional.
  /// [sourceDiskId] Optional.
  /// [sourceImageEncryptionKeys] Optional.
  /// [sourceImageId] Optional.
  /// [sourceSnapshotEncryptionKeys] Optional.
  /// [sourceSnapshotId] Optional.
  /// [type] Optional.
  /// [users] Optional.
  const GetRegionDiskResult({
    this.accessMode,
    this.asyncPrimaryDisks,
    this.createSnapshotBeforeDestroy,
    this.createSnapshotBeforeDestroyPrefix,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.diskEncryptionKeys,
    this.diskId,
    this.effectiveLabels,
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
    this.name,
    this.physicalBlockSizeBytes,
    this.project,
    this.provisionedIops,
    this.provisionedThroughput,
    this.pulumiLabels,
    this.region,
    this.replicaZones,
    this.selfLink,
    this.size,
    this.snapshot,
    this.sourceDisk,
    this.sourceDiskId,
    this.sourceImageEncryptionKeys,
    this.sourceImageId,
    this.sourceSnapshotEncryptionKeys,
    this.sourceSnapshotId,
    this.type,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'asyncPrimaryDisks': ?(() { final guardedValue = asyncPrimaryDisks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionDiskAsyncPrimaryDisk, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createSnapshotBeforeDestroy': ?createSnapshotBeforeDestroy,
      'createSnapshotBeforeDestroyPrefix': ?createSnapshotBeforeDestroyPrefix,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'diskEncryptionKeys': ?(() { final guardedValue = diskEncryptionKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionDiskDiskEncryptionKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'diskId': ?diskId,
      'effectiveLabels': ?effectiveLabels,
      'eraseWindowsVssSignature': ?eraseWindowsVssSignature,
      'guestOsFeatures': ?(() { final guardedValue = guestOsFeatures; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionDiskGuestOsFeature, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'image': ?image,
      'interface': ?interface,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'lastAttachTimestamp': ?lastAttachTimestamp,
      'lastDetachTimestamp': ?lastDetachTimestamp,
      'licenses': ?licenses,
      'name': ?name,
      'physicalBlockSizeBytes': ?physicalBlockSizeBytes,
      'project': ?project,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'replicaZones': ?replicaZones,
      'selfLink': ?selfLink,
      'size': ?size,
      'snapshot': ?snapshot,
      'sourceDisk': ?sourceDisk,
      'sourceDiskId': ?sourceDiskId,
      'sourceImageEncryptionKeys': ?(() { final guardedValue = sourceImageEncryptionKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionDiskSourceImageEncryptionKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sourceImageId': ?sourceImageId,
      'sourceSnapshotEncryptionKeys': ?(() { final guardedValue = sourceSnapshotEncryptionKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionDiskSourceSnapshotEncryptionKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sourceSnapshotId': ?sourceSnapshotId,
      'type': ?type,
      'users': ?users,
    };
  }

  factory GetRegionDiskResult.fromMap(Map<String, dynamic> map) {
    return GetRegionDiskResult(
      accessMode: (() { final guardedValue = map['accessMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      asyncPrimaryDisks: (() { final guardedValue = map['asyncPrimaryDisks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionDiskAsyncPrimaryDisk>(guardedValue, (value) => GetRegionDiskAsyncPrimaryDisk.fromMap((value as Map).cast<String, dynamic>())); })(),
      createSnapshotBeforeDestroy: (() { final guardedValue = map['createSnapshotBeforeDestroy']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createSnapshotBeforeDestroyPrefix: (() { final guardedValue = map['createSnapshotBeforeDestroyPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskEncryptionKeys: (() { final guardedValue = map['diskEncryptionKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionDiskDiskEncryptionKey>(guardedValue, (value) => GetRegionDiskDiskEncryptionKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      diskId: (() { final guardedValue = map['diskId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      eraseWindowsVssSignature: (() { final guardedValue = map['eraseWindowsVssSignature']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      guestOsFeatures: (() { final guardedValue = map['guestOsFeatures']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionDiskGuestOsFeature>(guardedValue, (value) => GetRegionDiskGuestOsFeature.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interface: (() { final guardedValue = map['interface']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      lastAttachTimestamp: (() { final guardedValue = map['lastAttachTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastDetachTimestamp: (() { final guardedValue = map['lastDetachTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenses: (() { final guardedValue = map['licenses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      physicalBlockSizeBytes: (() { final guardedValue = map['physicalBlockSizeBytes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisionedIops: (() { final guardedValue = map['provisionedIops']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      provisionedThroughput: (() { final guardedValue = map['provisionedThroughput']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicaZones: (() { final guardedValue = map['replicaZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      snapshot: (() { final guardedValue = map['snapshot']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceDisk: (() { final guardedValue = map['sourceDisk']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceDiskId: (() { final guardedValue = map['sourceDiskId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceImageEncryptionKeys: (() { final guardedValue = map['sourceImageEncryptionKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionDiskSourceImageEncryptionKey>(guardedValue, (value) => GetRegionDiskSourceImageEncryptionKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      sourceImageId: (() { final guardedValue = map['sourceImageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceSnapshotEncryptionKeys: (() { final guardedValue = map['sourceSnapshotEncryptionKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionDiskSourceSnapshotEncryptionKey>(guardedValue, (value) => GetRegionDiskSourceSnapshotEncryptionKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      sourceSnapshotId: (() { final guardedValue = map['sourceSnapshotId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
