// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_response_compute_v1.dart';

/// [Input Only] Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This field is persisted and returned for instanceTemplate and not returned in the context of instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
class AttachedDiskInitializeParamsResponseComputeV1 {
  /// The architecture of the attached disk. Valid values are arm64 or x86_64.
  final pulumi.Input<String> architecture;
  /// An optional description. Provide this property when creating the disk.
  final pulumi.Input<String> description;
  /// Specifies the disk name. If not specified, the default is to use the name of the instance. If a disk with the same name already exists in the given region, the existing disk is attached to the new instance and the new disk is not created.
  final pulumi.Input<String> diskName;
  /// Specifies the size of the disk in base-2 GB. The size must be at least 10 GB. If you specify a sourceImage, which is required for boot disks, the default size is the size of the sourceImage. If you do not specify a sourceImage, the default disk size is 500 GB.
  final pulumi.Input<String> diskSizeGb;
  /// Specifies the disk type to use to create the instance. If not specified, the default is pd-standard, specified using the full URL. For example: https://www.googleapis.com/compute/v1/projects/project/zones/zone /diskTypes/pd-standard For a full list of acceptable values, see Persistent disk types. If you specify this field when creating a VM, you can provide either the full or partial URL. For example, the following values are valid: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /diskTypes/diskType - projects/project/zones/zone/diskTypes/diskType - zones/zone/diskTypes/diskType If you specify this field when creating or updating an instance template or all-instances configuration, specify the type of the disk, not the URL. For example: pd-standard.
  final pulumi.Input<String> diskType;
  /// Labels to apply to this disk. These can be later modified by the disks.setLabels method. This field is only applicable for persistent disks.
  final pulumi.Input<Map<String, String>> labels;
  /// A list of publicly visible licenses. Reserved for Google's use.
  final pulumi.Input<List<String>> licenses;
  /// Specifies which action to take on instance update with this disk. Default is to use the existing disk.
  final pulumi.Input<String> onUpdateAction;
  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. Values must be between 10,000 and 120,000. For more details, see the Extreme persistent disk documentation.
  final pulumi.Input<String> provisionedIops;
  /// Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle. Values must be between 1 and 7,124.
  final pulumi.Input<String> provisionedThroughput;
  /// Required for each regional disk associated with the instance. Specify the URLs of the zones where the disk should be replicated to. You must provide exactly two replica zones, and one zone must be the same as the instance zone.
  final pulumi.Input<List<String>> replicaZones;
  /// Resource manager tags to be bound to the disk. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>> resourceManagerTags;
  /// Resource policies applied to this disk for automatic snapshot creations. Specified using the full or partial URL. For instance template, specify only the resource policy name.
  final pulumi.Input<List<String>> resourcePolicies;
  /// The source image to create this disk. When creating a new instance, one of initializeParams.sourceImage or initializeParams.sourceSnapshot or disks.source is required except for local SSD. To create a disk with one of the public operating system images, specify the image by its family name. For example, specify family/debian-9 to use the latest Debian 9 image: projects/debian-cloud/global/images/family/debian-9 Alternatively, use a specific version of a public operating system image: projects/debian-cloud/global/images/debian-9-stretch-vYYYYMMDD To create a disk with a custom image that you created, specify the image name in the following format: global/images/my-custom-image You can also specify a custom image by its image family, which returns the latest version of the image in that family. Replace the image name with family/family-name: global/images/family/my-image-family If the source image is deleted later, this field will not be set.
  final pulumi.Input<String> sourceImage;
  /// The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key. InstanceTemplate and InstancePropertiesPatch do not store customer-supplied encryption keys, so you cannot create disks for instances in a managed instance group if the source images are encrypted with your own keys.
  final pulumi.Input<CustomerEncryptionKeyResponseComputeV1> sourceImageEncryptionKey;
  /// The source snapshot to create this disk. When creating a new instance, one of initializeParams.sourceSnapshot or initializeParams.sourceImage or disks.source is required except for local SSD. To create a disk with a snapshot that you created, specify the snapshot name in the following format: global/snapshots/my-backup If the source snapshot is deleted later, this field will not be set.
  final pulumi.Input<String> sourceSnapshot;
  /// The customer-supplied encryption key of the source snapshot.
  final pulumi.Input<CustomerEncryptionKeyResponseComputeV1> sourceSnapshotEncryptionKey;

  /// Creates a new [AttachedDiskInitializeParamsResponseComputeV1].
  /// [architecture] The architecture of the attached disk. Valid values are arm64 or x86_64.
  /// [description] An optional description. Provide this property when creating the disk.
  /// [diskName] Specifies the disk name. If not specified, the default is to use the name of the instance. If a disk with the same name already exists in the given region, the existing disk is attached to the new instance and the new disk is not created.
  /// [diskSizeGb] Specifies the size of the disk in base-2 GB. The size must be at least 10 GB. If you specify a sourceImage, which is required for boot disks, the default size is the size of the sourceImage. If you do not specify a sourceImage, the default disk size is 500 GB.
  /// [diskType] Specifies the disk type to use to create the instance. If not specified, the default is pd-standard, specified using the full URL. For example: https://www.googleapis.com/compute/v1/projects/project/zones/zone /diskTypes/pd-standard For a full list of acceptable values, see Persistent disk types. If you specify this field when creating a VM, you can provide either the full or partial URL. For example, the following values are valid: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /diskTypes/diskType - projects/project/zones/zone/diskTypes/diskType - zones/zone/diskTypes/diskType If you specify this field when creating or updating an instance template or all-instances configuration, specify the type of the disk, not the URL. For example: pd-standard.
  /// [labels] Labels to apply to this disk. These can be later modified by the disks.setLabels method. This field is only applicable for persistent disks.
  /// [licenses] A list of publicly visible licenses. Reserved for Google's use.
  /// [onUpdateAction] Specifies which action to take on instance update with this disk. Default is to use the existing disk.
  /// [provisionedIops] Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. Values must be between 10,000 and 120,000. For more details, see the Extreme persistent disk documentation.
  /// [provisionedThroughput] Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle. Values must be between 1 and 7,124.
  /// [replicaZones] Required for each regional disk associated with the instance. Specify the URLs of the zones where the disk should be replicated to. You must provide exactly two replica zones, and one zone must be the same as the instance zone.
  /// [resourceManagerTags] Resource manager tags to be bound to the disk. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  /// [resourcePolicies] Resource policies applied to this disk for automatic snapshot creations. Specified using the full or partial URL. For instance template, specify only the resource policy name.
  /// [sourceImage] The source image to create this disk. When creating a new instance, one of initializeParams.sourceImage or initializeParams.sourceSnapshot or disks.source is required except for local SSD. To create a disk with one of the public operating system images, specify the image by its family name. For example, specify family/debian-9 to use the latest Debian 9 image: projects/debian-cloud/global/images/family/debian-9 Alternatively, use a specific version of a public operating system image: projects/debian-cloud/global/images/debian-9-stretch-vYYYYMMDD To create a disk with a custom image that you created, specify the image name in the following format: global/images/my-custom-image You can also specify a custom image by its image family, which returns the latest version of the image in that family. Replace the image name with family/family-name: global/images/family/my-image-family If the source image is deleted later, this field will not be set.
  /// [sourceImageEncryptionKey] The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key. InstanceTemplate and InstancePropertiesPatch do not store customer-supplied encryption keys, so you cannot create disks for instances in a managed instance group if the source images are encrypted with your own keys.
  /// [sourceSnapshot] The source snapshot to create this disk. When creating a new instance, one of initializeParams.sourceSnapshot or initializeParams.sourceImage or disks.source is required except for local SSD. To create a disk with a snapshot that you created, specify the snapshot name in the following format: global/snapshots/my-backup If the source snapshot is deleted later, this field will not be set.
  /// [sourceSnapshotEncryptionKey] The customer-supplied encryption key of the source snapshot.
  AttachedDiskInitializeParamsResponseComputeV1({
    required this.architecture,
    required this.description,
    required this.diskName,
    required this.diskSizeGb,
    required this.diskType,
    required this.labels,
    required this.licenses,
    required this.onUpdateAction,
    required this.provisionedIops,
    required this.provisionedThroughput,
    required this.replicaZones,
    required this.resourceManagerTags,
    required this.resourcePolicies,
    required this.sourceImage,
    required this.sourceImageEncryptionKey,
    required this.sourceSnapshot,
    required this.sourceSnapshotEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'description': description,
      'diskName': diskName,
      'diskSizeGb': diskSizeGb,
      'diskType': diskType,
      'labels': labels,
      'licenses': licenses,
      'onUpdateAction': onUpdateAction,
      'provisionedIops': provisionedIops,
      'provisionedThroughput': provisionedThroughput,
      'replicaZones': replicaZones,
      'resourceManagerTags': resourceManagerTags,
      'resourcePolicies': resourcePolicies,
      'sourceImage': sourceImage,
      'sourceImageEncryptionKey': pulumi.Input.mapInputValue<CustomerEncryptionKeyResponseComputeV1, Map<String, dynamic>>(sourceImageEncryptionKey, (value) => value.toMap()),
      'sourceSnapshot': sourceSnapshot,
      'sourceSnapshotEncryptionKey': pulumi.Input.mapInputValue<CustomerEncryptionKeyResponseComputeV1, Map<String, dynamic>>(sourceSnapshotEncryptionKey, (value) => value.toMap()),
    };
  }

  factory AttachedDiskInitializeParamsResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return AttachedDiskInitializeParamsResponseComputeV1(
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      diskName: pulumi.Input.fromValue(map['diskName'] as String),
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as String),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      licenses: pulumi.Input.fromValue((map['licenses'] as List).cast<String>()),
      onUpdateAction: pulumi.Input.fromValue(map['onUpdateAction'] as String),
      provisionedIops: pulumi.Input.fromValue(map['provisionedIops'] as String),
      provisionedThroughput: pulumi.Input.fromValue(map['provisionedThroughput'] as String),
      replicaZones: pulumi.Input.fromValue((map['replicaZones'] as List).cast<String>()),
      resourceManagerTags: pulumi.Input.fromValue((map['resourceManagerTags'] as Map).cast<String, String>()),
      resourcePolicies: pulumi.Input.fromValue((map['resourcePolicies'] as List).cast<String>()),
      sourceImage: pulumi.Input.fromValue(map['sourceImage'] as String),
      sourceImageEncryptionKey: pulumi.Input.fromValue(CustomerEncryptionKeyResponseComputeV1.fromMap((map['sourceImageEncryptionKey']! as Map).cast<String, dynamic>())),
      sourceSnapshot: pulumi.Input.fromValue(map['sourceSnapshot'] as String),
      sourceSnapshotEncryptionKey: pulumi.Input.fromValue(CustomerEncryptionKeyResponseComputeV1.fromMap((map['sourceSnapshotEncryptionKey']! as Map).cast<String, dynamic>())),
    );
  }
}

