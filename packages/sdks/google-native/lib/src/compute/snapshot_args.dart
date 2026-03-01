// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key.dart';
import 'snapshot_snapshot_type.dart';

/// {@template pulumi_compute_alpha_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_snapshot_args_doc}
class SnapshotArgs {
  /// Creates the new snapshot in the snapshot chain labeled with the specified name. The chain name must be 1-63 characters long and comply with RFC1035. This is an uncommon option only for advanced service owners who needs to create separate snapshot chains, for example, for chargeback tracking. When you describe your snapshot resource, this field is visible only if it has a non-empty value.
  final pulumi.Input<String>? chainName;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Whether this snapshot is created from a confidential compute mode disk. [Output Only]: This field is not set by user, but from source disk.
  final pulumi.Input<bool>? enableConfidentialCompute;
  /// [Input Only] Whether to attempt an application consistent snapshot by informing the OS to prepare for the snapshot process.
  final pulumi.Input<bool>? guestFlush;
  /// Labels to apply to this snapshot. These can be later modified by the setLabels method. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;
  /// An opaque location hint used to place the snapshot close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String>? locationHint;
  /// Number of days the snapshot should be retained before being deleted automatically.
  final pulumi.Input<int>? maxRetentionDays;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Encrypts the snapshot using a customer-supplied encryption key. After you encrypt a snapshot using a customer-supplied key, you must provide the same key if you use the snapshot later. For example, you must provide the encryption key when you create a disk from the encrypted snapshot in a future request. Customer-supplied encryption keys do not protect access to metadata of the snapshot. If you do not provide an encryption key when creating the snapshot, then the snapshot will be encrypted using an automatically generated key and you do not need to provide a key to use the snapshot later.
  final pulumi.Input<CustomerEncryptionKey>? snapshotEncryptionKey;
  /// Indicates the type of the snapshot.
  final pulumi.Input<SnapshotSnapshotType>? snapshotType;
  /// The source disk used to create this snapshot.
  final pulumi.Input<String>? sourceDisk;
  /// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKey>? sourceDiskEncryptionKey;
  /// The source disk whose recovery checkpoint will be used to create this snapshot.
  final pulumi.Input<String>? sourceDiskForRecoveryCheckpoint;
  /// The source instant snapshot used to create this snapshot. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instantSnapshots/instantSnapshot - projects/project/zones/zone/instantSnapshots/instantSnapshot - zones/zone/instantSnapshots/instantSnapshot
  final pulumi.Input<String>? sourceInstantSnapshot;
  /// Customer provided encryption key when creating Snapshot from Instant Snapshot.
  final pulumi.Input<CustomerEncryptionKey>? sourceInstantSnapshotEncryptionKey;
  /// Cloud Storage bucket storage location of the snapshot (regional or multi-regional).
  final pulumi.Input<List<String>>? storageLocations;

  /// Creates a new [SnapshotArgs].
  /// [chainName] Creates the new snapshot in the snapshot chain labeled with the specified name. The chain name must be 1-63 characters long and comply with RFC1035. This is an uncommon option only for advanced service owners who needs to create separate snapshot chains, for example, for chargeback tracking. When you describe your snapshot resource, this field is visible only if it has a non-empty value.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [enableConfidentialCompute] Whether this snapshot is created from a confidential compute mode disk. [Output Only]: This field is not set by user, but from source disk.
  /// [guestFlush] [Input Only] Whether to attempt an application consistent snapshot by informing the OS to prepare for the snapshot process.
  /// [labels] Labels to apply to this snapshot. These can be later modified by the setLabels method. Label values may be empty.
  /// [locationHint] An opaque location hint used to place the snapshot close to other resources. This field is for use by internal tools that use the public API.
  /// [maxRetentionDays] Number of days the snapshot should be retained before being deleted automatically.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [snapshotEncryptionKey] Encrypts the snapshot using a customer-supplied encryption key. After you encrypt a snapshot using a customer-supplied key, you must provide the same key if you use the snapshot later. For example, you must provide the encryption key when you create a disk from the encrypted snapshot in a future request. Customer-supplied encryption keys do not protect access to metadata of the snapshot. If you do not provide an encryption key when creating the snapshot, then the snapshot will be encrypted using an automatically generated key and you do not need to provide a key to use the snapshot later.
  /// [snapshotType] Indicates the type of the snapshot.
  /// [sourceDisk] The source disk used to create this snapshot.
  /// [sourceDiskEncryptionKey] The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  /// [sourceDiskForRecoveryCheckpoint] The source disk whose recovery checkpoint will be used to create this snapshot.
  /// [sourceInstantSnapshot] The source instant snapshot used to create this snapshot. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instantSnapshots/instantSnapshot - projects/project/zones/zone/instantSnapshots/instantSnapshot - zones/zone/instantSnapshots/instantSnapshot
  /// [sourceInstantSnapshotEncryptionKey] Customer provided encryption key when creating Snapshot from Instant Snapshot.
  /// [storageLocations] Cloud Storage bucket storage location of the snapshot (regional or multi-regional).
  SnapshotArgs({
    pulumi.Output<String>? chainName,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enableConfidentialCompute,
    pulumi.Output<bool>? guestFlush,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? locationHint,
    pulumi.Output<int>? maxRetentionDays,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    pulumi.Output<CustomerEncryptionKey>? snapshotEncryptionKey,
    pulumi.Output<SnapshotSnapshotType>? snapshotType,
    pulumi.Output<String>? sourceDisk,
    pulumi.Output<CustomerEncryptionKey>? sourceDiskEncryptionKey,
    pulumi.Output<String>? sourceDiskForRecoveryCheckpoint,
    pulumi.Output<String>? sourceInstantSnapshot,
    pulumi.Output<CustomerEncryptionKey>? sourceInstantSnapshotEncryptionKey,
    pulumi.Output<List<String>>? storageLocations,
  }) :
      chainName = pulumi.Input.asOptionalInput<String>(chainName),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableConfidentialCompute = pulumi.Input.asOptionalInput<bool>(enableConfidentialCompute),
      guestFlush = pulumi.Input.asOptionalInput<bool>(guestFlush),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      locationHint = pulumi.Input.asOptionalInput<String>(locationHint),
      maxRetentionDays = pulumi.Input.asOptionalInput<int>(maxRetentionDays),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      snapshotEncryptionKey = pulumi.Input.asOptionalInput<CustomerEncryptionKey>(snapshotEncryptionKey),
      snapshotType = pulumi.Input.asOptionalInput<SnapshotSnapshotType>(snapshotType),
      sourceDisk = pulumi.Input.asOptionalInput<String>(sourceDisk),
      sourceDiskEncryptionKey = pulumi.Input.asOptionalInput<CustomerEncryptionKey>(sourceDiskEncryptionKey),
      sourceDiskForRecoveryCheckpoint = pulumi.Input.asOptionalInput<String>(sourceDiskForRecoveryCheckpoint),
      sourceInstantSnapshot = pulumi.Input.asOptionalInput<String>(sourceInstantSnapshot),
      sourceInstantSnapshotEncryptionKey = pulumi.Input.asOptionalInput<CustomerEncryptionKey>(sourceInstantSnapshotEncryptionKey),
      storageLocations = pulumi.Input.asOptionalInput<List<String>>(storageLocations);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chainName': ?chainName,
      'description': ?description,
      'enableConfidentialCompute': ?enableConfidentialCompute,
      'guestFlush': ?guestFlush,
      'labels': ?labels,
      'locationHint': ?locationHint,
      'maxRetentionDays': ?maxRetentionDays,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'snapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKey, Map<String, dynamic>>(snapshotEncryptionKey, (value) => value.toMap()),
      'snapshotType': ?pulumi.Input.mapOptionalInputValue<SnapshotSnapshotType, String>(snapshotType, (value) => value.value),
      'sourceDisk': ?sourceDisk,
      'sourceDiskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKey, Map<String, dynamic>>(sourceDiskEncryptionKey, (value) => value.toMap()),
      'sourceDiskForRecoveryCheckpoint': ?sourceDiskForRecoveryCheckpoint,
      'sourceInstantSnapshot': ?sourceInstantSnapshot,
      'sourceInstantSnapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKey, Map<String, dynamic>>(sourceInstantSnapshotEncryptionKey, (value) => value.toMap()),
      'storageLocations': ?storageLocations,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      chainName: map['chainName'] == null ? null : pulumi.Output.create<String>(map['chainName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enableConfidentialCompute: map['enableConfidentialCompute'] == null ? null : pulumi.Output.create<bool>(map['enableConfidentialCompute'] as bool),
      guestFlush: map['guestFlush'] == null ? null : pulumi.Output.create<bool>(map['guestFlush'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      locationHint: map['locationHint'] == null ? null : pulumi.Output.create<String>(map['locationHint'] as String),
      maxRetentionDays: map['maxRetentionDays'] == null ? null : pulumi.Output.create<int>(map['maxRetentionDays'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      snapshotEncryptionKey: map['snapshotEncryptionKey'] == null ? null : pulumi.Output.create<CustomerEncryptionKey>(CustomerEncryptionKey.fromMap((map['snapshotEncryptionKey'] as Map).cast<String, dynamic>())),
      snapshotType: map['snapshotType'] == null ? null : pulumi.Output.create<SnapshotSnapshotType>(SnapshotSnapshotType.fromValue(map['snapshotType'] as String)),
      sourceDisk: map['sourceDisk'] == null ? null : pulumi.Output.create<String>(map['sourceDisk'] as String),
      sourceDiskEncryptionKey: map['sourceDiskEncryptionKey'] == null ? null : pulumi.Output.create<CustomerEncryptionKey>(CustomerEncryptionKey.fromMap((map['sourceDiskEncryptionKey'] as Map).cast<String, dynamic>())),
      sourceDiskForRecoveryCheckpoint: map['sourceDiskForRecoveryCheckpoint'] == null ? null : pulumi.Output.create<String>(map['sourceDiskForRecoveryCheckpoint'] as String),
      sourceInstantSnapshot: map['sourceInstantSnapshot'] == null ? null : pulumi.Output.create<String>(map['sourceInstantSnapshot'] as String),
      sourceInstantSnapshotEncryptionKey: map['sourceInstantSnapshotEncryptionKey'] == null ? null : pulumi.Output.create<CustomerEncryptionKey>(CustomerEncryptionKey.fromMap((map['sourceInstantSnapshotEncryptionKey'] as Map).cast<String, dynamic>())),
      storageLocations: map['storageLocations'] == null ? null : pulumi.Output.create<List<String>>((map['storageLocations'] as List).cast<String>()),
    );
  }
}

