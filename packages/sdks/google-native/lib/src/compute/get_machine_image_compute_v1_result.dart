// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_response_compute_v1.dart';
import 'instance_properties_response_compute_v1.dart';
import 'saved_disk_response_compute_v1.dart';
import 'source_disk_encryption_key_response_compute_v1.dart';
import 'source_instance_properties_response_compute_v1.dart';

/// Result data returned by getMachineImage.
class GetMachineImageComputeV1Result {
  /// The creation timestamp for this machine image in RFC3339 text format.
  final String? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;
  /// [Input Only] Whether to attempt an application consistent machine image by informing the OS to prepare for the snapshot process.
  final bool? guestFlush;
  /// Properties of source instance
  final InstancePropertiesResponseComputeV1? instanceProperties;
  /// The resource type, which is always compute#machineImage for machine image.
  final String? kind;
  /// Encrypts the machine image using a customer-supplied encryption key. After you encrypt a machine image using a customer-supplied key, you must provide the same key if you use the machine image later. For example, you must provide the encryption key when you create an instance from the encrypted machine image in a future request. Customer-supplied encryption keys do not protect access to metadata of the machine image. If you do not provide an encryption key when creating the machine image, then the machine image will be encrypted using an automatically generated key and you do not need to provide a key to use the machine image later.
  final CustomerEncryptionKeyResponseComputeV1? machineImageEncryptionKey;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;
  /// Reserved for future use.
  final bool? satisfiesPzs;
  /// An array of Machine Image specific properties for disks attached to the source instance
  final List<SavedDiskResponseComputeV1>? savedDisks;
  /// The URL for this machine image. The server defines this URL.
  final String? selfLink;
  /// [Input Only] The customer-supplied encryption key of the disks attached to the source instance. Required if the source disk is protected by a customer-supplied encryption key.
  final List<SourceDiskEncryptionKeyResponseComputeV1>? sourceDiskEncryptionKeys;
  /// The source instance used to create the machine image. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  final String? sourceInstance;
  /// DEPRECATED: Please use instance_properties instead for source instance related properties. New properties will not be added to this field.
  final SourceInstancePropertiesResponseComputeV1? sourceInstanceProperties;
  /// The status of the machine image. One of the following values: INVALID, CREATING, READY, DELETING, and UPLOADING.
  final String? status;
  /// The regional or multi-regional Cloud Storage bucket location where the machine image is stored.
  final List<String>? storageLocations;
  /// Total size of the storage used by the machine image.
  final String? totalStorageBytes;

  /// Creates a new [GetMachineImageComputeV1Result].
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
  const GetMachineImageComputeV1Result({
    this.creationTimestamp,
    this.description,
    this.guestFlush,
    this.instanceProperties,
    this.kind,
    this.machineImageEncryptionKey,
    this.name,
    this.satisfiesPzs,
    this.savedDisks,
    this.selfLink,
    this.sourceDiskEncryptionKeys,
    this.sourceInstance,
    this.sourceInstanceProperties,
    this.status,
    this.storageLocations,
    this.totalStorageBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'guestFlush': ?guestFlush,
      'instanceProperties': ?instanceProperties?.toMap(),
      'kind': ?kind,
      'machineImageEncryptionKey': ?machineImageEncryptionKey?.toMap(),
      'name': ?name,
      'satisfiesPzs': ?satisfiesPzs,
      'savedDisks': ?(() { final guardedValue = savedDisks; if (guardedValue == null) return null; return pulumi.Input.encodeList<SavedDiskResponseComputeV1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'selfLink': ?selfLink,
      'sourceDiskEncryptionKeys': ?(() { final guardedValue = sourceDiskEncryptionKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<SourceDiskEncryptionKeyResponseComputeV1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sourceInstance': ?sourceInstance,
      'sourceInstanceProperties': ?sourceInstanceProperties?.toMap(),
      'status': ?status,
      'storageLocations': ?storageLocations,
      'totalStorageBytes': ?totalStorageBytes,
    };
  }

  factory GetMachineImageComputeV1Result.fromMap(Map<String, dynamic> map) {
    return GetMachineImageComputeV1Result(
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      guestFlush: (() { final guardedValue = map['guestFlush']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      instanceProperties: (() { final guardedValue = map['instanceProperties']; if (guardedValue == null) return null; return InstancePropertiesResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      machineImageEncryptionKey: (() { final guardedValue = map['machineImageEncryptionKey']; if (guardedValue == null) return null; return CustomerEncryptionKeyResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      satisfiesPzs: (() { final guardedValue = map['satisfiesPzs']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      savedDisks: (() { final guardedValue = map['savedDisks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SavedDiskResponseComputeV1>(guardedValue, (value) => SavedDiskResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceDiskEncryptionKeys: (() { final guardedValue = map['sourceDiskEncryptionKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SourceDiskEncryptionKeyResponseComputeV1>(guardedValue, (value) => SourceDiskEncryptionKeyResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); })(),
      sourceInstance: (() { final guardedValue = map['sourceInstance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceInstanceProperties: (() { final guardedValue = map['sourceInstanceProperties']; if (guardedValue == null) return null; return SourceInstancePropertiesResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageLocations: (() { final guardedValue = map['storageLocations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      totalStorageBytes: (() { final guardedValue = map['totalStorageBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
