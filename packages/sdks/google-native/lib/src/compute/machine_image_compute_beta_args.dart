// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_compute_beta.dart';
import 'saved_disk_compute_beta.dart';
import 'source_disk_encryption_key_compute_beta.dart';

/// {@template pulumi_compute_beta_machine_image_compute_beta_args_doc}
/// The set of arguments for MachineImage.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_machine_image_compute_beta_args_doc}
class MachineImageComputeBetaArgs {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// [Input Only] Whether to attempt an application consistent machine image by informing the OS to prepare for the snapshot process.
  final pulumi.Input<bool>? guestFlush;
  /// Encrypts the machine image using a customer-supplied encryption key. After you encrypt a machine image using a customer-supplied key, you must provide the same key if you use the machine image later. For example, you must provide the encryption key when you create an instance from the encrypted machine image in a future request. Customer-supplied encryption keys do not protect access to metadata of the machine image. If you do not provide an encryption key when creating the machine image, then the machine image will be encrypted using an automatically generated key and you do not need to provide a key to use the machine image later.
  final pulumi.Input<CustomerEncryptionKeyComputeBeta>? machineImageEncryptionKey;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// An array of Machine Image specific properties for disks attached to the source instance
  final pulumi.Input<List<SavedDiskComputeBeta>>? savedDisks;
  /// [Input Only] The customer-supplied encryption key of the disks attached to the source instance. Required if the source disk is protected by a customer-supplied encryption key.
  final pulumi.Input<List<SourceDiskEncryptionKeyComputeBeta>>? sourceDiskEncryptionKeys;
  /// The source instance used to create the machine image. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  final pulumi.Input<String> sourceInstance;
  /// The regional or multi-regional Cloud Storage bucket location where the machine image is stored.
  final pulumi.Input<List<String>>? storageLocations;

  /// Creates a new [MachineImageComputeBetaArgs].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [guestFlush] [Input Only] Whether to attempt an application consistent machine image by informing the OS to prepare for the snapshot process.
  /// [machineImageEncryptionKey] Encrypts the machine image using a customer-supplied encryption key. After you encrypt a machine image using a customer-supplied key, you must provide the same key if you use the machine image later. For example, you must provide the encryption key when you create an instance from the encrypted machine image in a future request. Customer-supplied encryption keys do not protect access to metadata of the machine image. If you do not provide an encryption key when creating the machine image, then the machine image will be encrypted using an automatically generated key and you do not need to provide a key to use the machine image later.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [savedDisks] An array of Machine Image specific properties for disks attached to the source instance
  /// [sourceDiskEncryptionKeys] [Input Only] The customer-supplied encryption key of the disks attached to the source instance. Required if the source disk is protected by a customer-supplied encryption key.
  /// [sourceInstance] The source instance used to create the machine image. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  /// [storageLocations] The regional or multi-regional Cloud Storage bucket location where the machine image is stored.
  const MachineImageComputeBetaArgs({
    this.description,
    this.guestFlush,
    this.machineImageEncryptionKey,
    this.name,
    this.project,
    this.requestId,
    this.savedDisks,
    this.sourceDiskEncryptionKeys,
    required this.sourceInstance,
    this.storageLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'guestFlush': ?guestFlush,
      'machineImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKeyComputeBeta, Map<String, dynamic>>(machineImageEncryptionKey, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'savedDisks': ?pulumi.Input.mapOptionalInputValue<List<SavedDiskComputeBeta>, List<Map<String, dynamic>>>(savedDisks, (value) => pulumi.Input.encodeList<SavedDiskComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceDiskEncryptionKeys': ?pulumi.Input.mapOptionalInputValue<List<SourceDiskEncryptionKeyComputeBeta>, List<Map<String, dynamic>>>(sourceDiskEncryptionKeys, (value) => pulumi.Input.encodeList<SourceDiskEncryptionKeyComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceInstance': sourceInstance,
      'storageLocations': ?storageLocations,
    };
  }

  factory MachineImageComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return MachineImageComputeBetaArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guestFlush: (() { final guardedValue = map['guestFlush']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      machineImageEncryptionKey: (() { final guardedValue = map['machineImageEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerEncryptionKeyComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      savedDisks: (() { final guardedValue = map['savedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SavedDiskComputeBeta>(guardedValue, (value) => SavedDiskComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceDiskEncryptionKeys: (() { final guardedValue = map['sourceDiskEncryptionKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SourceDiskEncryptionKeyComputeBeta>(guardedValue, (value) => SourceDiskEncryptionKeyComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceInstance: pulumi.Input.fromValue(map['sourceInstance'] as String),
      storageLocations: (() { final guardedValue = map['storageLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

