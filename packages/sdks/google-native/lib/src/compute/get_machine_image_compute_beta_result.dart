// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_response_compute_beta.dart';
import 'instance_properties_response_compute_beta.dart';
import 'saved_disk_response_compute_beta.dart';
import 'source_disk_encryption_key_response_compute_beta.dart';
import 'source_instance_properties_response_compute_beta.dart';

/// Result data returned by getMachineImage.
class GetMachineImageComputeBetaResult {
  /// The creation timestamp for this machine image in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// [Input Only] Whether to attempt an application consistent machine image by informing the OS to prepare for the snapshot process.
  final bool guestFlush;
  /// Properties of source instance
  final InstancePropertiesResponseComputeBeta instanceProperties;
  /// The resource type, which is always compute#machineImage for machine image.
  final String kind;
  /// Encrypts the machine image using a customer-supplied encryption key. After you encrypt a machine image using a customer-supplied key, you must provide the same key if you use the machine image later. For example, you must provide the encryption key when you create an instance from the encrypted machine image in a future request. Customer-supplied encryption keys do not protect access to metadata of the machine image. If you do not provide an encryption key when creating the machine image, then the machine image will be encrypted using an automatically generated key and you do not need to provide a key to use the machine image later.
  final CustomerEncryptionKeyResponseComputeBeta machineImageEncryptionKey;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// Reserved for future use.
  final bool satisfiesPzs;
  /// An array of Machine Image specific properties for disks attached to the source instance
  final List<SavedDiskResponseComputeBeta> savedDisks;
  /// The URL for this machine image. The server defines this URL.
  final String selfLink;
  /// [Input Only] The customer-supplied encryption key of the disks attached to the source instance. Required if the source disk is protected by a customer-supplied encryption key.
  final List<SourceDiskEncryptionKeyResponseComputeBeta> sourceDiskEncryptionKeys;
  /// The source instance used to create the machine image. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  final String sourceInstance;
  /// DEPRECATED: Please use instance_properties instead for source instance related properties. New properties will not be added to this field.
  final SourceInstancePropertiesResponseComputeBeta sourceInstanceProperties;
  /// The status of the machine image. One of the following values: INVALID, CREATING, READY, DELETING, and UPLOADING.
  final String status;
  /// The regional or multi-regional Cloud Storage bucket location where the machine image is stored.
  final List<String> storageLocations;
  /// Total size of the storage used by the machine image.
  final String totalStorageBytes;

  /// Creates a new [GetMachineImageComputeBetaResult].
  /// [creationTimestamp] The creation timestamp for this machine image in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [guestFlush] [Input Only] Whether to attempt an application consistent machine image by informing the OS to prepare for the snapshot process.
  /// [instanceProperties] Properties of source instance
  /// [kind] The resource type, which is always compute#machineImage for machine image.
  /// [machineImageEncryptionKey] Encrypts the machine image using a customer-supplied encryption key. After you encrypt a machine image using a customer-supplied key, you must provide the same key if you use the machine image later. For example, you must provide the encryption key when you create an instance from the encrypted machine image in a future request. Customer-supplied encryption keys do not protect access to metadata of the machine image. If you do not provide an encryption key when creating the machine image, then the machine image will be encrypted using an automatically generated key and you do not need to provide a key to use the machine image later.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [satisfiesPzs] Reserved for future use.
  /// [savedDisks] An array of Machine Image specific properties for disks attached to the source instance
  /// [selfLink] The URL for this machine image. The server defines this URL.
  /// [sourceDiskEncryptionKeys] [Input Only] The customer-supplied encryption key of the disks attached to the source instance. Required if the source disk is protected by a customer-supplied encryption key.
  /// [sourceInstance] The source instance used to create the machine image. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  /// [sourceInstanceProperties] DEPRECATED: Please use instance_properties instead for source instance related properties. New properties will not be added to this field.
  /// [status] The status of the machine image. One of the following values: INVALID, CREATING, READY, DELETING, and UPLOADING.
  /// [storageLocations] The regional or multi-regional Cloud Storage bucket location where the machine image is stored.
  /// [totalStorageBytes] Total size of the storage used by the machine image.
  const GetMachineImageComputeBetaResult({
    required this.creationTimestamp,
    required this.description,
    required this.guestFlush,
    required this.instanceProperties,
    required this.kind,
    required this.machineImageEncryptionKey,
    required this.name,
    required this.satisfiesPzs,
    required this.savedDisks,
    required this.selfLink,
    required this.sourceDiskEncryptionKeys,
    required this.sourceInstance,
    required this.sourceInstanceProperties,
    required this.status,
    required this.storageLocations,
    required this.totalStorageBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': creationTimestamp,
      'description': description,
      'guestFlush': guestFlush,
      'instanceProperties': instanceProperties.toMap(),
      'kind': kind,
      'machineImageEncryptionKey': machineImageEncryptionKey.toMap(),
      'name': name,
      'satisfiesPzs': satisfiesPzs,
      'savedDisks': pulumi.Input.encodeList<SavedDiskResponseComputeBeta, Map<String, dynamic>>(savedDisks, (value) => value.toMap()),
      'selfLink': selfLink,
      'sourceDiskEncryptionKeys': pulumi.Input.encodeList<SourceDiskEncryptionKeyResponseComputeBeta, Map<String, dynamic>>(sourceDiskEncryptionKeys, (value) => value.toMap()),
      'sourceInstance': sourceInstance,
      'sourceInstanceProperties': sourceInstanceProperties.toMap(),
      'status': status,
      'storageLocations': storageLocations,
      'totalStorageBytes': totalStorageBytes,
    };
  }

  factory GetMachineImageComputeBetaResult.fromMap(Map<String, dynamic> map) {
    return GetMachineImageComputeBetaResult(
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      guestFlush: map['guestFlush'] as bool,
      instanceProperties: InstancePropertiesResponseComputeBeta.fromMap((map['instanceProperties']! as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      machineImageEncryptionKey: CustomerEncryptionKeyResponseComputeBeta.fromMap((map['machineImageEncryptionKey']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      satisfiesPzs: map['satisfiesPzs'] as bool,
      savedDisks: pulumi.Input.decodeList<SavedDiskResponseComputeBeta>(map['savedDisks']!, (value) => SavedDiskResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] as String,
      sourceDiskEncryptionKeys: pulumi.Input.decodeList<SourceDiskEncryptionKeyResponseComputeBeta>(map['sourceDiskEncryptionKeys']!, (value) => SourceDiskEncryptionKeyResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      sourceInstance: map['sourceInstance'] as String,
      sourceInstanceProperties: SourceInstancePropertiesResponseComputeBeta.fromMap((map['sourceInstanceProperties']! as Map).cast<String, dynamic>()),
      status: map['status'] as String,
      storageLocations: (map['storageLocations'] as List).cast<String>(),
      totalStorageBytes: map['totalStorageBytes'] as String,
    );
  }
}

