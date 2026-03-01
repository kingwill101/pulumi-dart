// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_snapshot_encryption_key.dart';
import 'snapshot_source_disk_encryption_key.dart';

/// Input properties used for looking up and filtering Snapshot resources.
class SnapshotState {
  /// Creates the new snapshot in the snapshot chain labeled with the
  /// specified name. The chain name must be 1-63 characters long and
  /// comply with RFC1035. This is an uncommon option only for advanced
  /// service owners who needs to create separate snapshot chains, for
  /// example, for chargeback tracking.  When you describe your snapshot
  /// resource, this field is visible only if it has a non-empty value.
  final pulumi.Input<String>? chainName;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Size of the snapshot, specified in GB.
  final pulumi.Input<int>? diskSizeGb;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Whether to attempt an application consistent snapshot by informing the OS to prepare for the snapshot process.
  final pulumi.Input<bool>? guestFlush;
  /// The fingerprint used for optimistic locking of this resource. Used
  /// internally during updates.
  final pulumi.Input<String>? labelFingerprint;
  /// Labels to apply to this Snapshot.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// A list of public visible licenses that apply to this snapshot. This
  /// can be because the original image had licenses attached (such as a
  /// Windows image).  snapshotEncryptionKey nested object Encrypts the
  /// snapshot using a customer-supplied encryption key.
  final pulumi.Input<List<String>>? licenses;
  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
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
  /// The unique identifier for the resource.
  final pulumi.Input<int>? snapshotId;
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
  /// A size of the storage used by the snapshot. As snapshots share
  /// storage, this number is expected to change with snapshot
  /// creation/deletion.
  final pulumi.Input<int>? storageBytes;
  /// Cloud Storage bucket storage location of the snapshot (regional or multi-regional).
  final pulumi.Input<List<String>>? storageLocations;
  /// A reference to the zone where the disk is hosted.
  final pulumi.Input<String>? zone;

  /// Creates a new [SnapshotState].
  /// [chainName] Creates the new snapshot in the snapshot chain labeled with the
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [diskSizeGb] Size of the snapshot, specified in GB.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [guestFlush] Whether to attempt an application consistent snapshot by informing the OS to prepare for the snapshot process.
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource. Used
  /// [labels] Labels to apply to this Snapshot.
  /// [licenses] A list of public visible licenses that apply to this snapshot. This
  /// [name] Name of the resource; provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [selfLink] The URI of the created resource.
  /// [snapshotEncryptionKey] Encrypts the snapshot using a customer-supplied encryption key.
  /// [snapshotId] The unique identifier for the resource.
  /// [snapshotType] Indicates the type of the snapshot.
  /// [sourceDisk] A reference to the disk used to create this snapshot.
  /// [sourceDiskEncryptionKey] The customer-supplied encryption key of the source snapshot. Required
  /// [sourceInstantSnapshot] A reference to the instant snapshot used to create this snapshot.
  /// [storageBytes] A size of the storage used by the snapshot. As snapshots share
  /// [storageLocations] Cloud Storage bucket storage location of the snapshot (regional or multi-regional).
  /// [zone] A reference to the zone where the disk is hosted.
  SnapshotState({
    pulumi.Output<String>? chainName,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<int>? diskSizeGb,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<bool>? guestFlush,
    pulumi.Output<String>? labelFingerprint,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<List<String>>? licenses,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? selfLink,
    pulumi.Output<SnapshotSnapshotEncryptionKey>? snapshotEncryptionKey,
    pulumi.Output<int>? snapshotId,
    pulumi.Output<String>? snapshotType,
    pulumi.Output<String>? sourceDisk,
    pulumi.Output<SnapshotSourceDiskEncryptionKey>? sourceDiskEncryptionKey,
    pulumi.Output<String>? sourceInstantSnapshot,
    pulumi.Output<int>? storageBytes,
    pulumi.Output<List<String>>? storageLocations,
    pulumi.Output<String>? zone,
  }) :
      chainName = pulumi.Input.asOptionalInput<String>(chainName),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskSizeGb = pulumi.Input.asOptionalInput<int>(diskSizeGb),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      guestFlush = pulumi.Input.asOptionalInput<bool>(guestFlush),
      labelFingerprint = pulumi.Input.asOptionalInput<String>(labelFingerprint),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      licenses = pulumi.Input.asOptionalInput<List<String>>(licenses),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      snapshotEncryptionKey = pulumi.Input.asOptionalInput<SnapshotSnapshotEncryptionKey>(snapshotEncryptionKey),
      snapshotId = pulumi.Input.asOptionalInput<int>(snapshotId),
      snapshotType = pulumi.Input.asOptionalInput<String>(snapshotType),
      sourceDisk = pulumi.Input.asOptionalInput<String>(sourceDisk),
      sourceDiskEncryptionKey = pulumi.Input.asOptionalInput<SnapshotSourceDiskEncryptionKey>(sourceDiskEncryptionKey),
      sourceInstantSnapshot = pulumi.Input.asOptionalInput<String>(sourceInstantSnapshot),
      storageBytes = pulumi.Input.asOptionalInput<int>(storageBytes),
      storageLocations = pulumi.Input.asOptionalInput<List<String>>(storageLocations),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chainName': ?chainName,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'diskSizeGb': ?diskSizeGb,
      'effectiveLabels': ?effectiveLabels,
      'guestFlush': ?guestFlush,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'licenses': ?licenses,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'selfLink': ?selfLink,
      'snapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<SnapshotSnapshotEncryptionKey, Map<String, dynamic>>(snapshotEncryptionKey, (value) => value.toMap()),
      'snapshotId': ?snapshotId,
      'snapshotType': ?snapshotType,
      'sourceDisk': ?sourceDisk,
      'sourceDiskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<SnapshotSourceDiskEncryptionKey, Map<String, dynamic>>(sourceDiskEncryptionKey, (value) => value.toMap()),
      'sourceInstantSnapshot': ?sourceInstantSnapshot,
      'storageBytes': ?storageBytes,
      'storageLocations': ?storageLocations,
      'zone': ?zone,
    };
  }

  factory SnapshotState.fromMap(Map<String, dynamic> map) {
    return SnapshotState(
      chainName: map['chainName'] == null ? null : pulumi.Output.create<String>(map['chainName'] as String),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskSizeGb: map['diskSizeGb'] == null ? null : pulumi.Output.create<int>(map['diskSizeGb'] as int),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      guestFlush: map['guestFlush'] == null ? null : pulumi.Output.create<bool>(map['guestFlush'] as bool),
      labelFingerprint: map['labelFingerprint'] == null ? null : pulumi.Output.create<String>(map['labelFingerprint'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      licenses: map['licenses'] == null ? null : pulumi.Output.create<List<String>>((map['licenses'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      snapshotEncryptionKey: map['snapshotEncryptionKey'] == null ? null : pulumi.Output.create<SnapshotSnapshotEncryptionKey>(SnapshotSnapshotEncryptionKey.fromMap((map['snapshotEncryptionKey'] as Map).cast<String, dynamic>())),
      snapshotId: map['snapshotId'] == null ? null : pulumi.Output.create<int>(map['snapshotId'] as int),
      snapshotType: map['snapshotType'] == null ? null : pulumi.Output.create<String>(map['snapshotType'] as String),
      sourceDisk: map['sourceDisk'] == null ? null : pulumi.Output.create<String>(map['sourceDisk'] as String),
      sourceDiskEncryptionKey: map['sourceDiskEncryptionKey'] == null ? null : pulumi.Output.create<SnapshotSourceDiskEncryptionKey>(SnapshotSourceDiskEncryptionKey.fromMap((map['sourceDiskEncryptionKey'] as Map).cast<String, dynamic>())),
      sourceInstantSnapshot: map['sourceInstantSnapshot'] == null ? null : pulumi.Output.create<String>(map['sourceInstantSnapshot'] as String),
      storageBytes: map['storageBytes'] == null ? null : pulumi.Output.create<int>(map['storageBytes'] as int),
      storageLocations: map['storageLocations'] == null ? null : pulumi.Output.create<List<String>>((map['storageLocations'] as List).cast<String>()),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

