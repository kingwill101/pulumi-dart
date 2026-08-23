// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key.dart';
import 'disk_access_mode.dart';
import 'disk_architecture.dart';
import 'disk_async_replication.dart';
import 'disk_interface.dart';
import 'disk_params.dart';
import 'disk_storage_type.dart';
import 'guest_os_feature.dart';

/// {@template pulumi_compute_alpha_disk_args_doc}
/// The set of arguments for Disk.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_disk_args_doc}
class DiskArgs {
  /// The access mode of the disk. - READ_WRITE_SINGLE: The default AccessMode, means the disk can be attached to single instance in RW mode. - READ_WRITE_MANY: The AccessMode means the disk can be attached to multiple instances in RW mode. - READ_ONLY_MANY: The AccessMode means the disk can be attached to multiple instances in RO mode. The AccessMode is only valid for Hyperdisk disk types.
  final pulumi.Input<DiskAccessMode>? accessMode;
  /// The architecture of the disk. Valid values are ARM64 or X86_64.
  final pulumi.Input<DiskArchitecture>? architecture;
  /// Disk asynchronously replicated into this disk.
  final pulumi.Input<DiskAsyncReplication>? asyncPrimaryDisk;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Encrypts the disk using a customer-supplied encryption key or a customer-managed encryption key. Encryption keys do not protect access to metadata of the disk. After you encrypt a disk with a customer-supplied key, you must provide the same key if you use the disk later. For example, to create a disk snapshot, to create a disk image, to create a machine image, or to attach the disk to a virtual machine. After you encrypt a disk with a customer-managed key, the diskEncryptionKey.kmsKeyName is set to a key *version* name once the disk is created. The disk is encrypted with this version of the key. In the response, diskEncryptionKey.kmsKeyName appears in the following format: "diskEncryptionKey.kmsKeyName": "projects/kms_project_id/locations/region/keyRings/ key_region/cryptoKeys/key /cryptoKeysVersions/version If you do not provide an encryption key when creating the disk, then the disk is encrypted using an automatically generated key and you don't need to provide a key to use the disk later.
  final pulumi.Input<CustomerEncryptionKey>? diskEncryptionKey;
  /// Whether this disk is using confidential compute mode.
  final pulumi.Input<bool>? enableConfidentialCompute;
  /// Specifies whether the disk restored from a source snapshot should erase Windows specific VSS signature.
  final pulumi.Input<bool>? eraseWindowsVssSignature;
  /// A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  final pulumi.Input<List<GuestOsFeature>>? guestOsFeatures;
  /// [Deprecated] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  final pulumi.Input<DiskInterface>? interface;
  /// Labels to apply to this disk. These can be later modified by the setLabels method.
  final pulumi.Input<Map<String, String>>? labels;
  /// Integer license codes indicating which licenses are attached to this disk.
  final pulumi.Input<List<String>>? licenseCodes;
  /// A list of publicly visible licenses. Reserved for Google's use.
  final pulumi.Input<List<String>>? licenses;
  /// An opaque location hint used to place the disk close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String>? locationHint;
  /// Indicates whether or not the disk can be read/write attached to more than one instance.
  final pulumi.Input<bool>? multiWriter;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Internal use only.
  final pulumi.Input<String>? options;
  /// Input only. [Input Only] Additional params passed with the request, but not persisted as part of resource payload.
  final pulumi.Input<DiskParams>? params;
  /// Physical block size of the persistent disk, in bytes. If not present in a request, a default value is used. The currently supported size is 4096, other sizes may be added in the future. If an unsupported value is requested, the error message will list the supported values for the caller's project.
  final pulumi.Input<String>? physicalBlockSizeBytes;
  final pulumi.Input<String>? project;
  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. Values must be between 10,000 and 120,000. For more details, see the Extreme persistent disk documentation.
  final pulumi.Input<String>? provisionedIops;
  /// Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle. Values must be between 1 and 7,124.
  final pulumi.Input<String>? provisionedThroughput;
  /// URLs of the zones where the disk should be replicated to. Only applicable for regional resources.
  final pulumi.Input<List<String>>? replicaZones;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Resource policies applied to this disk for automatic snapshot creations.
  final pulumi.Input<List<String>>? resourcePolicies;
  /// Size, in GB, of the persistent disk. You can specify this field when creating a persistent disk using the sourceImage, sourceSnapshot, or sourceDisk parameter, or specify it alone to create an empty persistent disk. If you specify this field along with a source, the value of sizeGb must not be less than the size of the source. Acceptable values are greater than 0.
  final pulumi.Input<String>? sizeGb;
  /// The source disk used to create this disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - https://www.googleapis.com/compute/v1/projects/project/regions/region /disks/disk - projects/project/zones/zone/disks/disk - projects/project/regions/region/disks/disk - zones/zone/disks/disk - regions/region/disks/disk
  final pulumi.Input<String>? sourceDisk;
  /// The source image used to create this disk. If the source image is deleted, this field will not be set. To create a disk with one of the public operating system images, specify the image by its family name. For example, specify family/debian-9 to use the latest Debian 9 image: projects/debian-cloud/global/images/family/debian-9 Alternatively, use a specific version of a public operating system image: projects/debian-cloud/global/images/debian-9-stretch-vYYYYMMDD To create a disk with a custom image that you created, specify the image name in the following format: global/images/my-custom-image You can also specify a custom image by its image family, which returns the latest version of the image in that family. Replace the image name with family/family-name: global/images/family/my-image-family
  final pulumi.Input<String>? sourceImage;
  /// The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKey>? sourceImageEncryptionKey;
  /// The source instant snapshot used to create this disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instantSnapshots/instantSnapshot - projects/project/zones/zone/instantSnapshots/instantSnapshot - zones/zone/instantSnapshots/instantSnapshot
  final pulumi.Input<String>? sourceInstantSnapshot;
  /// The source snapshot used to create this disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project /global/snapshots/snapshot - projects/project/global/snapshots/snapshot - global/snapshots/snapshot
  final pulumi.Input<String>? sourceSnapshot;
  /// The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKey>? sourceSnapshotEncryptionKey;
  /// The full Google Cloud Storage URI where the disk image is stored. This file must be a gzip-compressed tarball whose name ends in .tar.gz or virtual machine disk whose name ends in vmdk. Valid URIs may start with gs:// or https://storage.googleapis.com/. This flag is not optimized for creating multiple disks from a source storage object. To create many disks from a source storage object, use gcloud compute images import instead.
  final pulumi.Input<String>? sourceStorageObject;
  /// The storage pool in which the new disk is created. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /storagePools/storagePool - projects/project/zones/zone/storagePools/storagePool - zones/zone/storagePools/storagePool
  final pulumi.Input<String>? storagePool;
  /// [Deprecated] Storage type of the persistent disk.
  final pulumi.Input<DiskStorageType>? storageType;
  /// URL of the disk type resource describing which disk type to use to create the disk. Provide this when creating the disk. For example: projects/project /zones/zone/diskTypes/pd-ssd . See Persistent disk types.
  final pulumi.Input<String>? type;
  /// A list of publicly visible user-licenses. Unlike regular licenses, user provided licenses can be modified after the disk is created. This includes a list of URLs to the license resource. For example, to provide a debian license: https://www.googleapis.com/compute/v1/projects/debian-cloud/global/licenses/debian-9-stretch
  final pulumi.Input<List<String>>? userLicenses;
  final pulumi.Input<String>? zone;

  /// Creates a new [DiskArgs].
  /// [accessMode] The access mode of the disk. - READ_WRITE_SINGLE: The default AccessMode, means the disk can be attached to single instance in RW mode. - READ_WRITE_MANY: The AccessMode means the disk can be attached to multiple instances in RW mode. - READ_ONLY_MANY: The AccessMode means the disk can be attached to multiple instances in RO mode. The AccessMode is only valid for Hyperdisk disk types.
  /// [architecture] The architecture of the disk. Valid values are ARM64 or X86_64.
  /// [asyncPrimaryDisk] Disk asynchronously replicated into this disk.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [diskEncryptionKey] Encrypts the disk using a customer-supplied encryption key or a customer-managed encryption key. Encryption keys do not protect access to metadata of the disk. After you encrypt a disk with a customer-supplied key, you must provide the same key if you use the disk later. For example, to create a disk snapshot, to create a disk image, to create a machine image, or to attach the disk to a virtual machine. After you encrypt a disk with a customer-managed key, the diskEncryptionKey.kmsKeyName is set to a key *version* name once the disk is created. The disk is encrypted with this version of the key. In the response, diskEncryptionKey.kmsKeyName appears in the following format: "diskEncryptionKey.kmsKeyName": "projects/kms_project_id/locations/region/keyRings/ key_region/cryptoKeys/key /cryptoKeysVersions/version If you do not provide an encryption key when creating the disk, then the disk is encrypted using an automatically generated key and you don't need to provide a key to use the disk later.
  /// [enableConfidentialCompute] Whether this disk is using confidential compute mode.
  /// [eraseWindowsVssSignature] Specifies whether the disk restored from a source snapshot should erase Windows specific VSS signature.
  /// [guestOsFeatures] A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  /// [interface] [Deprecated] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  /// [labels] Labels to apply to this disk. These can be later modified by the setLabels method.
  /// [licenseCodes] Integer license codes indicating which licenses are attached to this disk.
  /// [licenses] A list of publicly visible licenses. Reserved for Google's use.
  /// [locationHint] An opaque location hint used to place the disk close to other resources. This field is for use by internal tools that use the public API.
  /// [multiWriter] Indicates whether or not the disk can be read/write attached to more than one instance.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [options] Internal use only.
  /// [params] Input only. [Input Only] Additional params passed with the request, but not persisted as part of resource payload.
  /// [physicalBlockSizeBytes] Physical block size of the persistent disk, in bytes. If not present in a request, a default value is used. The currently supported size is 4096, other sizes may be added in the future. If an unsupported value is requested, the error message will list the supported values for the caller's project.
  /// [project] Optional.
  /// [provisionedIops] Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. Values must be between 10,000 and 120,000. For more details, see the Extreme persistent disk documentation.
  /// [provisionedThroughput] Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle. Values must be between 1 and 7,124.
  /// [replicaZones] URLs of the zones where the disk should be replicated to. Only applicable for regional resources.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [resourcePolicies] Resource policies applied to this disk for automatic snapshot creations.
  /// [sizeGb] Size, in GB, of the persistent disk. You can specify this field when creating a persistent disk using the sourceImage, sourceSnapshot, or sourceDisk parameter, or specify it alone to create an empty persistent disk. If you specify this field along with a source, the value of sizeGb must not be less than the size of the source. Acceptable values are greater than 0.
  /// [sourceDisk] The source disk used to create this disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - https://www.googleapis.com/compute/v1/projects/project/regions/region /disks/disk - projects/project/zones/zone/disks/disk - projects/project/regions/region/disks/disk - zones/zone/disks/disk - regions/region/disks/disk
  /// [sourceImage] The source image used to create this disk. If the source image is deleted, this field will not be set. To create a disk with one of the public operating system images, specify the image by its family name. For example, specify family/debian-9 to use the latest Debian 9 image: projects/debian-cloud/global/images/family/debian-9 Alternatively, use a specific version of a public operating system image: projects/debian-cloud/global/images/debian-9-stretch-vYYYYMMDD To create a disk with a custom image that you created, specify the image name in the following format: global/images/my-custom-image You can also specify a custom image by its image family, which returns the latest version of the image in that family. Replace the image name with family/family-name: global/images/family/my-image-family
  /// [sourceImageEncryptionKey] The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key.
  /// [sourceInstantSnapshot] The source instant snapshot used to create this disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instantSnapshots/instantSnapshot - projects/project/zones/zone/instantSnapshots/instantSnapshot - zones/zone/instantSnapshots/instantSnapshot
  /// [sourceSnapshot] The source snapshot used to create this disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project /global/snapshots/snapshot - projects/project/global/snapshots/snapshot - global/snapshots/snapshot
  /// [sourceSnapshotEncryptionKey] The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.
  /// [sourceStorageObject] The full Google Cloud Storage URI where the disk image is stored. This file must be a gzip-compressed tarball whose name ends in .tar.gz or virtual machine disk whose name ends in vmdk. Valid URIs may start with gs:// or https://storage.googleapis.com/. This flag is not optimized for creating multiple disks from a source storage object. To create many disks from a source storage object, use gcloud compute images import instead.
  /// [storagePool] The storage pool in which the new disk is created. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /storagePools/storagePool - projects/project/zones/zone/storagePools/storagePool - zones/zone/storagePools/storagePool
  /// [storageType] [Deprecated] Storage type of the persistent disk.
  /// [type] URL of the disk type resource describing which disk type to use to create the disk. Provide this when creating the disk. For example: projects/project /zones/zone/diskTypes/pd-ssd . See Persistent disk types.
  /// [userLicenses] A list of publicly visible user-licenses. Unlike regular licenses, user provided licenses can be modified after the disk is created. This includes a list of URLs to the license resource. For example, to provide a debian license: https://www.googleapis.com/compute/v1/projects/debian-cloud/global/licenses/debian-9-stretch
  /// [zone] Optional.
  const DiskArgs({
    this.accessMode,
    this.architecture,
    this.asyncPrimaryDisk,
    this.description,
    this.diskEncryptionKey,
    this.enableConfidentialCompute,
    this.eraseWindowsVssSignature,
    this.guestOsFeatures,
    this.interface,
    this.labels,
    this.licenseCodes,
    this.licenses,
    this.locationHint,
    this.multiWriter,
    this.name,
    this.options,
    this.params,
    this.physicalBlockSizeBytes,
    this.project,
    this.provisionedIops,
    this.provisionedThroughput,
    this.replicaZones,
    this.requestId,
    this.resourcePolicies,
    this.sizeGb,
    this.sourceDisk,
    this.sourceImage,
    this.sourceImageEncryptionKey,
    this.sourceInstantSnapshot,
    this.sourceSnapshot,
    this.sourceSnapshotEncryptionKey,
    this.sourceStorageObject,
    this.storagePool,
    this.storageType,
    this.type,
    this.userLicenses,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?pulumi.Input.mapOptionalInputValue<DiskAccessMode, String>(accessMode, (value) => value.wireValue),
      'architecture': ?pulumi.Input.mapOptionalInputValue<DiskArchitecture, String>(architecture, (value) => value.wireValue),
      'asyncPrimaryDisk': ?pulumi.Input.mapOptionalInputValue<DiskAsyncReplication, Map<String, dynamic>>(asyncPrimaryDisk, (value) => value.toMap()),
      'description': ?description,
      'diskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKey, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'enableConfidentialCompute': ?enableConfidentialCompute,
      'eraseWindowsVssSignature': ?eraseWindowsVssSignature,
      'guestOsFeatures': ?pulumi.Input.mapOptionalInputValue<List<GuestOsFeature>, List<Map<String, dynamic>>>(guestOsFeatures, (value) => pulumi.Input.encodeList<GuestOsFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interface': ?pulumi.Input.mapOptionalInputValue<DiskInterface, String>(interface, (value) => value.wireValue),
      'labels': ?labels,
      'licenseCodes': ?licenseCodes,
      'licenses': ?licenses,
      'locationHint': ?locationHint,
      'multiWriter': ?multiWriter,
      'name': ?name,
      'options': ?options,
      'params': ?pulumi.Input.mapOptionalInputValue<DiskParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'physicalBlockSizeBytes': ?physicalBlockSizeBytes,
      'project': ?project,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'replicaZones': ?replicaZones,
      'requestId': ?requestId,
      'resourcePolicies': ?resourcePolicies,
      'sizeGb': ?sizeGb,
      'sourceDisk': ?sourceDisk,
      'sourceImage': ?sourceImage,
      'sourceImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKey, Map<String, dynamic>>(sourceImageEncryptionKey, (value) => value.toMap()),
      'sourceInstantSnapshot': ?sourceInstantSnapshot,
      'sourceSnapshot': ?sourceSnapshot,
      'sourceSnapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKey, Map<String, dynamic>>(sourceSnapshotEncryptionKey, (value) => value.toMap()),
      'sourceStorageObject': ?sourceStorageObject,
      'storagePool': ?storagePool,
      'storageType': ?pulumi.Input.mapOptionalInputValue<DiskStorageType, String>(storageType, (value) => value.wireValue),
      'type': ?type,
      'userLicenses': ?userLicenses,
      'zone': ?zone,
    };
  }

  factory DiskArgs.fromMap(Map<String, dynamic> map) {
    return DiskArgs(
      accessMode: (() { final guardedValue = map['accessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskAccessMode.fromValue(guardedValue as String)); })(),
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskArchitecture.fromValue(guardedValue as String)); })(),
      asyncPrimaryDisk: (() { final guardedValue = map['asyncPrimaryDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskAsyncReplication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryptionKey: (() { final guardedValue = map['diskEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableConfidentialCompute: (() { final guardedValue = map['enableConfidentialCompute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eraseWindowsVssSignature: (() { final guardedValue = map['eraseWindowsVssSignature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      guestOsFeatures: (() { final guardedValue = map['guestOsFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GuestOsFeature>(guardedValue, (value) => GuestOsFeature.fromMap((value as Map).cast<String, dynamic>()))); })(),
      interface: (() { final guardedValue = map['interface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskInterface.fromValue(guardedValue as String)); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      licenseCodes: (() { final guardedValue = map['licenseCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      licenses: (() { final guardedValue = map['licenses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      locationHint: (() { final guardedValue = map['locationHint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiWriter: (() { final guardedValue = map['multiWriter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      physicalBlockSizeBytes: (() { final guardedValue = map['physicalBlockSizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedIops: (() { final guardedValue = map['provisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedThroughput: (() { final guardedValue = map['provisionedThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaZones: (() { final guardedValue = map['replicaZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sizeGb: (() { final guardedValue = map['sizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDisk: (() { final guardedValue = map['sourceDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceImage: (() { final guardedValue = map['sourceImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceImageEncryptionKey: (() { final guardedValue = map['sourceImageEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceInstantSnapshot: (() { final guardedValue = map['sourceInstantSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceSnapshot: (() { final guardedValue = map['sourceSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceSnapshotEncryptionKey: (() { final guardedValue = map['sourceSnapshotEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceStorageObject: (() { final guardedValue = map['sourceStorageObject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storagePool: (() { final guardedValue = map['storagePool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskStorageType.fromValue(guardedValue as String)); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userLicenses: (() { final guardedValue = map['userLicenses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
