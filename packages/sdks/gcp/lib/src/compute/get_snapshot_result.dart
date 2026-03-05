// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_snapshot_encryption_key.dart';
import 'get_snapshot_source_disk_encryption_key.dart';

/// Result data returned by getSnapshot.
class GetSnapshotResult {
  final String chainName;
  final String creationTimestamp;
  final String description;
  final int diskSizeGb;
  final Map<String, String> effectiveLabels;
  final String? filter;
  final bool guestFlush;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String labelFingerprint;
  final Map<String, String> labels;
  final List<String> licenses;
  final bool? mostRecent;
  final String? name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String selfLink;
  final List<GetSnapshotSnapshotEncryptionKey> snapshotEncryptionKeys;
  final int snapshotId;
  final String snapshotType;
  final String sourceDisk;
  final List<GetSnapshotSourceDiskEncryptionKey> sourceDiskEncryptionKeys;
  final String sourceInstantSnapshot;
  final int storageBytes;
  final List<String> storageLocations;
  final String zone;

  /// Creates a new [GetSnapshotResult].
  /// [chainName] Required.
  /// [creationTimestamp] Required.
  /// [description] Required.
  /// [diskSizeGb] Required.
  /// [effectiveLabels] Required.
  /// [filter] Optional.
  /// [guestFlush] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labelFingerprint] Required.
  /// [labels] Required.
  /// [licenses] Required.
  /// [mostRecent] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [selfLink] Required.
  /// [snapshotEncryptionKeys] Required.
  /// [snapshotId] Required.
  /// [snapshotType] Required.
  /// [sourceDisk] Required.
  /// [sourceDiskEncryptionKeys] Required.
  /// [sourceInstantSnapshot] Required.
  /// [storageBytes] Required.
  /// [storageLocations] Required.
  /// [zone] Required.
  GetSnapshotResult({
    required this.chainName,
    required this.creationTimestamp,
    required this.description,
    required this.diskSizeGb,
    required this.effectiveLabels,
    this.filter,
    required this.guestFlush,
    required this.id,
    required this.labelFingerprint,
    required this.labels,
    required this.licenses,
    this.mostRecent,
    this.name,
    this.project,
    required this.pulumiLabels,
    required this.selfLink,
    required this.snapshotEncryptionKeys,
    required this.snapshotId,
    required this.snapshotType,
    required this.sourceDisk,
    required this.sourceDiskEncryptionKeys,
    required this.sourceInstantSnapshot,
    required this.storageBytes,
    required this.storageLocations,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chainName': chainName,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'diskSizeGb': diskSizeGb,
      'effectiveLabels': effectiveLabels,
      'filter': ?filter,
      'guestFlush': guestFlush,
      'id': id,
      'labelFingerprint': labelFingerprint,
      'labels': labels,
      'licenses': licenses,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'selfLink': selfLink,
      'snapshotEncryptionKeys': pulumi.Input.encodeList<GetSnapshotSnapshotEncryptionKey, Map<String, dynamic>>(snapshotEncryptionKeys, (value) => value.toMap()),
      'snapshotId': snapshotId,
      'snapshotType': snapshotType,
      'sourceDisk': sourceDisk,
      'sourceDiskEncryptionKeys': pulumi.Input.encodeList<GetSnapshotSourceDiskEncryptionKey, Map<String, dynamic>>(sourceDiskEncryptionKeys, (value) => value.toMap()),
      'sourceInstantSnapshot': sourceInstantSnapshot,
      'storageBytes': storageBytes,
      'storageLocations': storageLocations,
      'zone': zone,
    };
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      chainName: map['chainName'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      diskSizeGb: map['diskSizeGb'] as int,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      guestFlush: map['guestFlush'] as bool,
      id: map['id'] as String,
      labelFingerprint: map['labelFingerprint'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      licenses: (map['licenses'] as List).cast<String>(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      selfLink: map['selfLink'] as String,
      snapshotEncryptionKeys: pulumi.Input.decodeList<GetSnapshotSnapshotEncryptionKey>(map['snapshotEncryptionKeys']!, (value) => GetSnapshotSnapshotEncryptionKey.fromMap((value as Map).cast<String, dynamic>())),
      snapshotId: map['snapshotId'] as int,
      snapshotType: map['snapshotType'] as String,
      sourceDisk: map['sourceDisk'] as String,
      sourceDiskEncryptionKeys: pulumi.Input.decodeList<GetSnapshotSourceDiskEncryptionKey>(map['sourceDiskEncryptionKeys']!, (value) => GetSnapshotSourceDiskEncryptionKey.fromMap((value as Map).cast<String, dynamic>())),
      sourceInstantSnapshot: map['sourceInstantSnapshot'] as String,
      storageBytes: map['storageBytes'] as int,
      storageLocations: (map['storageLocations'] as List).cast<String>(),
      zone: map['zone'] as String,
    );
  }
}

