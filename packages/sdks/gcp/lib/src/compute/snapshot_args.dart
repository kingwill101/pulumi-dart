// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_params.dart';
import 'snapshot_snapshot_encryption_key.dart';
import 'snapshot_source_disk_encryption_key.dart';

/// {@template pulumi_compute_snapshot_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_snapshot_snapshot_args_doc}
class SnapshotArgs {
  /// Creates the new snapshot in the snapshot chain labeled with the
  /// specified name. The chain name must be 1-63 characters long and
  /// comply with RFC1035. This is an uncommon option only for advanced
  /// service owners who needs to create separate snapshot chains, for
  /// example, for chargeback tracking.  When you describe your snapshot
  /// resource, this field is visible only if it has a non-empty value.
  final pulumi.Input<String>? chainName;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// (Optional, Beta)
  /// Whether to attempt an application consistent snapshot by informing the OS to prepare for the snapshot process.
  final pulumi.Input<bool>? guestFlush;
  /// Labels to apply to this Snapshot.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<SnapshotParams>? params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Encrypts the snapshot using a customer-supplied encryption key.
  /// After you encrypt a snapshot using a customer-supplied key, you must
  /// provide the same key if you use the snapshot later. For example, you
  /// must provide the encryption key when you create a disk from the
  /// encrypted snapshot in a future request.
  /// Customer-supplied encryption keys do not protect access to metadata of
  /// the snapshot.
  /// If you do not provide an encryption key when creating the snapshot,
  /// then the snapshot will be encrypted using an automatically generated
  /// key and you do not need to provide a key to use the snapshot later.
  /// Structure is documented below.
  final pulumi.Input<SnapshotSnapshotEncryptionKey>? snapshotEncryptionKey;
  /// Indicates the type of the snapshot.
  /// Possible values are: `ARCHIVE`, `STANDARD`.
  final pulumi.Input<String>? snapshotType;
  /// A reference to the disk used to create this snapshot.
  final pulumi.Input<String>? sourceDisk;
  /// The customer-supplied encryption key of the source snapshot. Required
  /// if the source snapshot is protected by a customer-supplied encryption
  /// key.
  /// Structure is documented below.
  final pulumi.Input<SnapshotSourceDiskEncryptionKey>? sourceDiskEncryptionKey;
  /// A reference to the instant snapshot used to create this snapshot.
  final pulumi.Input<String>? sourceInstantSnapshot;
  /// Cloud Storage bucket storage location of the snapshot (regional or multi-regional).
  final pulumi.Input<List<String>>? storageLocations;
  /// A reference to the zone where the disk is hosted.
  final pulumi.Input<String>? zone;

  /// Creates a new [SnapshotArgs].
  /// [chainName] Creates the new snapshot in the snapshot chain labeled with the
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [guestFlush] (Optional, Beta)
  /// [labels] Labels to apply to this Snapshot.
  /// [name] Name of the resource; provided by the client when the resource is
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [project] The ID of the project in which the resource belongs.
  /// [snapshotEncryptionKey] Encrypts the snapshot using a customer-supplied encryption key.
  /// [snapshotType] Indicates the type of the snapshot.
  /// [sourceDisk] A reference to the disk used to create this snapshot.
  /// [sourceDiskEncryptionKey] The customer-supplied encryption key of the source snapshot. Required
  /// [sourceInstantSnapshot] A reference to the instant snapshot used to create this snapshot.
  /// [storageLocations] Cloud Storage bucket storage location of the snapshot (regional or multi-regional).
  /// [zone] A reference to the zone where the disk is hosted.
  const SnapshotArgs({
    this.chainName,
    this.deletionPolicy,
    this.description,
    this.guestFlush,
    this.labels,
    this.name,
    this.params,
    this.project,
    this.snapshotEncryptionKey,
    this.snapshotType,
    this.sourceDisk,
    this.sourceDiskEncryptionKey,
    this.sourceInstantSnapshot,
    this.storageLocations,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chainName': ?chainName,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'guestFlush': ?guestFlush,
      'labels': ?labels,
      'name': ?name,
      'params': ?pulumi.Input.mapOptionalInputValue<SnapshotParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'project': ?project,
      'snapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<SnapshotSnapshotEncryptionKey, Map<String, dynamic>>(snapshotEncryptionKey, (value) => value.toMap()),
      'snapshotType': ?snapshotType,
      'sourceDisk': ?sourceDisk,
      'sourceDiskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<SnapshotSourceDiskEncryptionKey, Map<String, dynamic>>(sourceDiskEncryptionKey, (value) => value.toMap()),
      'sourceInstantSnapshot': ?sourceInstantSnapshot,
      'storageLocations': ?storageLocations,
      'zone': ?zone,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      chainName: (() { final guardedValue = map['chainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guestFlush: (() { final guardedValue = map['guestFlush']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotEncryptionKey: (() { final guardedValue = map['snapshotEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotSnapshotEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshotType: (() { final guardedValue = map['snapshotType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDisk: (() { final guardedValue = map['sourceDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDiskEncryptionKey: (() { final guardedValue = map['sourceDiskEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotSourceDiskEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceInstantSnapshot: (() { final guardedValue = map['sourceInstantSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageLocations: (() { final guardedValue = map['storageLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
