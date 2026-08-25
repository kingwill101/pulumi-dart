// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_param.dart';
import 'get_snapshot_snapshot_encryption_key.dart';
import 'get_snapshot_source_disk_encryption_key.dart';

/// Result data returned by getSnapshot.
class GetSnapshotResult {
  final String? chainName;
  final String? creationTimestamp;
  final String? deletionPolicy;
  final String? description;
  final int? diskSizeGb;
  final Map<String, String>? effectiveLabels;
  final String? filter;
  final bool? guestFlush;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? labelFingerprint;
  final Map<String, String>? labels;
  final List<String>? licenses;
  final bool? mostRecent;
  final String? name;
  final List<GetSnapshotParam>? params;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? selfLink;
  final List<GetSnapshotSnapshotEncryptionKey>? snapshotEncryptionKeys;
  final int? snapshotId;
  final String? snapshotType;
  final String? sourceDisk;
  final List<GetSnapshotSourceDiskEncryptionKey>? sourceDiskEncryptionKeys;
  final String? sourceInstantSnapshot;
  final int? storageBytes;
  final List<String>? storageLocations;
  final String? zone;

  /// Creates a new [GetSnapshotResult].
  /// [chainName] Optional.
  /// [creationTimestamp] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [diskSizeGb] Optional.
  /// [effectiveLabels] Optional.
  /// [filter] Optional.
  /// [guestFlush] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labelFingerprint] Optional.
  /// [labels] Optional.
  /// [licenses] Optional.
  /// [mostRecent] Optional.
  /// [name] Optional.
  /// [params] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [selfLink] Optional.
  /// [snapshotEncryptionKeys] Optional.
  /// [snapshotId] Optional.
  /// [snapshotType] Optional.
  /// [sourceDisk] Optional.
  /// [sourceDiskEncryptionKeys] Optional.
  /// [sourceInstantSnapshot] Optional.
  /// [storageBytes] Optional.
  /// [storageLocations] Optional.
  /// [zone] Optional.
  const GetSnapshotResult({
    this.chainName,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.diskSizeGb,
    this.effectiveLabels,
    this.filter,
    this.guestFlush,
    this.id,
    this.labelFingerprint,
    this.labels,
    this.licenses,
    this.mostRecent,
    this.name,
    this.params,
    this.project,
    this.pulumiLabels,
    this.selfLink,
    this.snapshotEncryptionKeys,
    this.snapshotId,
    this.snapshotType,
    this.sourceDisk,
    this.sourceDiskEncryptionKeys,
    this.sourceInstantSnapshot,
    this.storageBytes,
    this.storageLocations,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chainName': ?chainName,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'diskSizeGb': ?diskSizeGb,
      'effectiveLabels': ?effectiveLabels,
      'filter': ?filter,
      'guestFlush': ?guestFlush,
      'id': ?id,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'licenses': ?licenses,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'params': ?(() { final guardedValue = params; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSnapshotParam, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'selfLink': ?selfLink,
      'snapshotEncryptionKeys': ?(() { final guardedValue = snapshotEncryptionKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSnapshotSnapshotEncryptionKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'snapshotId': ?snapshotId,
      'snapshotType': ?snapshotType,
      'sourceDisk': ?sourceDisk,
      'sourceDiskEncryptionKeys': ?(() { final guardedValue = sourceDiskEncryptionKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSnapshotSourceDiskEncryptionKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sourceInstantSnapshot': ?sourceInstantSnapshot,
      'storageBytes': ?storageBytes,
      'storageLocations': ?storageLocations,
      'zone': ?zone,
    };
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      chainName: (() { final guardedValue = map['chainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      guestFlush: (() { final guardedValue = map['guestFlush']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      licenses: (() { final guardedValue = map['licenses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSnapshotParam>(guardedValue, (value) => GetSnapshotParam.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotEncryptionKeys: (() { final guardedValue = map['snapshotEncryptionKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSnapshotSnapshotEncryptionKey>(guardedValue, (value) => GetSnapshotSnapshotEncryptionKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      snapshotType: (() { final guardedValue = map['snapshotType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceDisk: (() { final guardedValue = map['sourceDisk']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceDiskEncryptionKeys: (() { final guardedValue = map['sourceDiskEncryptionKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSnapshotSourceDiskEncryptionKey>(guardedValue, (value) => GetSnapshotSourceDiskEncryptionKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      sourceInstantSnapshot: (() { final guardedValue = map['sourceInstantSnapshot']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageBytes: (() { final guardedValue = map['storageBytes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      storageLocations: (() { final guardedValue = map['storageLocations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
