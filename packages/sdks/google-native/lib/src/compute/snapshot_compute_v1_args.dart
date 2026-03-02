// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_compute_v1.dart';
import 'snapshot_snapshot_type_compute_v1.dart';

/// {@template pulumi_compute_v1_snapshot_compute_v1_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_snapshot_compute_v1_args_doc}
class SnapshotComputeV1Args {
  /// Creates the new snapshot in the snapshot chain labeled with the specified name. The chain name must be 1-63 characters long and comply with RFC1035. This is an uncommon option only for advanced service owners who needs to create separate snapshot chains, for example, for chargeback tracking. When you describe your snapshot resource, this field is visible only if it has a non-empty value.
  final pulumi.Input<String>? chainName;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Labels to apply to this snapshot. These can be later modified by the setLabels method. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;
  /// An opaque location hint used to place the snapshot close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String>? locationHint;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Encrypts the snapshot using a customer-supplied encryption key. After you encrypt a snapshot using a customer-supplied key, you must provide the same key if you use the snapshot later. For example, you must provide the encryption key when you create a disk from the encrypted snapshot in a future request. Customer-supplied encryption keys do not protect access to metadata of the snapshot. If you do not provide an encryption key when creating the snapshot, then the snapshot will be encrypted using an automatically generated key and you do not need to provide a key to use the snapshot later.
  final pulumi.Input<CustomerEncryptionKeyComputeV1>? snapshotEncryptionKey;
  /// Indicates the type of the snapshot.
  final pulumi.Input<SnapshotSnapshotTypeComputeV1>? snapshotType;
  /// The source disk used to create this snapshot.
  final pulumi.Input<String>? sourceDisk;
  /// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKeyComputeV1>? sourceDiskEncryptionKey;
  /// The source disk whose recovery checkpoint will be used to create this snapshot.
  final pulumi.Input<String>? sourceDiskForRecoveryCheckpoint;
  /// Cloud Storage bucket storage location of the snapshot (regional or multi-regional).
  final pulumi.Input<List<String>>? storageLocations;

  /// Creates a new [SnapshotComputeV1Args].
  /// [chainName] Creates the new snapshot in the snapshot chain labeled with the specified name. The chain name must be 1-63 characters long and comply with RFC1035. This is an uncommon option only for advanced service owners who needs to create separate snapshot chains, for example, for chargeback tracking. When you describe your snapshot resource, this field is visible only if it has a non-empty value.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [labels] Labels to apply to this snapshot. These can be later modified by the setLabels method. Label values may be empty.
  /// [locationHint] An opaque location hint used to place the snapshot close to other resources. This field is for use by internal tools that use the public API.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [snapshotEncryptionKey] Encrypts the snapshot using a customer-supplied encryption key. After you encrypt a snapshot using a customer-supplied key, you must provide the same key if you use the snapshot later. For example, you must provide the encryption key when you create a disk from the encrypted snapshot in a future request. Customer-supplied encryption keys do not protect access to metadata of the snapshot. If you do not provide an encryption key when creating the snapshot, then the snapshot will be encrypted using an automatically generated key and you do not need to provide a key to use the snapshot later.
  /// [snapshotType] Indicates the type of the snapshot.
  /// [sourceDisk] The source disk used to create this snapshot.
  /// [sourceDiskEncryptionKey] The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  /// [sourceDiskForRecoveryCheckpoint] The source disk whose recovery checkpoint will be used to create this snapshot.
  /// [storageLocations] Cloud Storage bucket storage location of the snapshot (regional or multi-regional).
  SnapshotComputeV1Args({
    this.chainName,
    this.description,
    this.labels,
    this.locationHint,
    this.name,
    this.project,
    this.requestId,
    this.snapshotEncryptionKey,
    this.snapshotType,
    this.sourceDisk,
    this.sourceDiskEncryptionKey,
    this.sourceDiskForRecoveryCheckpoint,
    this.storageLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chainName': ?chainName,
      'description': ?description,
      'labels': ?labels,
      'locationHint': ?locationHint,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'snapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKeyComputeV1, Map<String, dynamic>>(snapshotEncryptionKey, (value) => value.toMap()),
      'snapshotType': ?pulumi.Input.mapOptionalInputValue<SnapshotSnapshotTypeComputeV1, String>(snapshotType, (value) => value.value),
      'sourceDisk': ?sourceDisk,
      'sourceDiskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKeyComputeV1, Map<String, dynamic>>(sourceDiskEncryptionKey, (value) => value.toMap()),
      'sourceDiskForRecoveryCheckpoint': ?sourceDiskForRecoveryCheckpoint,
      'storageLocations': ?storageLocations,
    };
  }

  factory SnapshotComputeV1Args.fromMap(Map<String, dynamic> map) {
    return SnapshotComputeV1Args(
      chainName: map['chainName'] == null ? null : (map['chainName']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      locationHint: map['locationHint'] == null ? null : (map['locationHint']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      snapshotEncryptionKey: map['snapshotEncryptionKey'] == null ? null : (CustomerEncryptionKeyComputeV1.fromMap((map['snapshotEncryptionKey']! as Map).cast<String, dynamic>())).input(),
      snapshotType: map['snapshotType'] == null ? null : (SnapshotSnapshotTypeComputeV1.fromValue(map['snapshotType']! as String)).input(),
      sourceDisk: map['sourceDisk'] == null ? null : (map['sourceDisk']! as String).input(),
      sourceDiskEncryptionKey: map['sourceDiskEncryptionKey'] == null ? null : (CustomerEncryptionKeyComputeV1.fromMap((map['sourceDiskEncryptionKey']! as Map).cast<String, dynamic>())).input(),
      sourceDiskForRecoveryCheckpoint: map['sourceDiskForRecoveryCheckpoint'] == null ? null : (map['sourceDiskForRecoveryCheckpoint']! as String).input(),
      storageLocations: map['storageLocations'] == null ? null : ((map['storageLocations']! as List).cast<String>()).input(),
    );
  }
}

