// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_disk_encryption_key.dart';
import 'region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_label.dart';
import 'region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_resource_manager_tag.dart';
import 'region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_source_image_encryption_key.dart';
import 'region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_source_snapshot_encryption_key.dart';

class RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk {
  /// , The architecture of the image. Allowed values are ARM64 or X86_64.
  final pulumi.Input<String>? architecture;
  /// , Whether or not the disk should be auto-deleted. This defaults to true.
  final pulumi.Input<bool>? autoDelete;
  /// , Indicates that this is a boot disk. This defaults to false.
  final pulumi.Input<bool>? boot;
  /// , A unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk.
  final pulumi.Input<String>? deviceName;
  /// , Encrypts or decrypts a disk using a customer-supplied encryption key.  Structure is documented below.
  final pulumi.Input<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskDiskEncryptionKey>? diskEncryptionKey;
  /// , Name of the disk. When not provided, this defaults to the name of the instance.
  final pulumi.Input<String>? diskName;
  /// , The size of the image in gigabytes. If not specified, it will inherit the size of its base image. For SCRATCH disks, the size must be one of 375 or 3000 GB, with a default of 375 GB.
  final pulumi.Input<int>? diskSizeGb;
  /// , The Google Compute Engine disk type. Such as "pd-ssd", "local-ssd", "pd-balanced" or "pd-standard".
  final pulumi.Input<String>? diskType;
  /// , A list of features to enable on the guest operating system. Applicable only for bootable images.
  final pulumi.Input<List<String>>? guestOsFeatures;
  /// , Specifies the disk interface to use for attaching this disk.
  final pulumi.Input<String>? interface;
  /// , A set of key/value label pairs to assign to disks. Structure is documented below.
  final pulumi.Input<List<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel>>? labels;
  /// , The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If you are attaching or creating a boot disk, this must read-write mode.
  final pulumi.Input<String>? mode;
  /// , Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. For more details, see the [Extreme persistent disk documentation](https://cloud.google.com/compute/docs/disks/extreme-persistent-disk) or the [Hyperdisk documentation](https://cloud.google.com/compute/docs/disks/hyperdisks) depending on the selected disk_type.
  final pulumi.Input<int>? provisionedIops;
  /// , Indicates how much throughput to provision for the disk, in MB/s. This sets the amount of data that can be read or written from the disk per second. Values must greater than or equal to 1. For more details, see the [Hyperdisk documentation](https://cloud.google.com/compute/docs/disks/hyperdisks).
  final pulumi.Input<int>? provisionedThroughput;
  /// , A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty. Structure is documented below.
  final pulumi.Input<List<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag>>? resourceManagerTags;
  /// , A list (short name or id) of resource policies to attach to this disk. Currently a max of 1 resource policy is supported.
  final pulumi.Input<String>? resourcePolicies;
  /// , The name (not self_link) of the disk (such as those managed by google_compute_disk) to attach. &gt; Note: Either source or source_image is required when creating a new instance except for when creating a local SSD.
  final pulumi.Input<String>? source;
  /// , The image from which to initialize this disk. This can be one of: the image's self_link, projects/{project}/global/images/{image}, projects/{project}/global/images/family/{family}, global/images/{image}, global/images/family/{family}, family/{family}, {project}/{family}, {project}/{image}, {family}, or {image}. &gt; Note: Either source or source_image is required when creating a new instance except for when creating a local SSD.
  final pulumi.Input<String>? sourceImage;
  /// , The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key. Instance templates do not store customer-supplied encryption keys, so you cannot create disks for instances in a managed instance group if the source images are encrypted with your own keys. Structure is documented below.
  final pulumi.Input<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey>? sourceImageEncryptionKey;
  /// , The source snapshot to create this disk. When creating a new instance, one of initializeParams.sourceSnapshot, initializeParams.sourceImage, or disks.source is required except for local SSD.
  final pulumi.Input<String>? sourceSnapshot;
  /// , The customer-supplied encryption key of the source snapshot. Structure is documented below.
  /// - - -
  final pulumi.Input<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceSnapshotEncryptionKey>? sourceSnapshotEncryptionKey;
  /// , The type of Google Compute Engine disk, can be either "SCRATCH" or "PERSISTENT".
  final pulumi.Input<String>? type;

  /// Creates a new [RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk].
  /// [architecture] , The architecture of the image. Allowed values are ARM64 or X86_64.
  /// [autoDelete] , Whether or not the disk should be auto-deleted. This defaults to true.
  /// [boot] , Indicates that this is a boot disk. This defaults to false.
  /// [deviceName] , A unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk.
  /// [diskEncryptionKey] , Encrypts or decrypts a disk using a customer-supplied encryption key.  Structure is documented below.
  /// [diskName] , Name of the disk. When not provided, this defaults to the name of the instance.
  /// [diskSizeGb] , The size of the image in gigabytes. If not specified, it will inherit the size of its base image. For SCRATCH disks, the size must be one of 375 or 3000 GB, with a default of 375 GB.
  /// [diskType] , The Google Compute Engine disk type. Such as "pd-ssd", "local-ssd", "pd-balanced" or "pd-standard".
  /// [guestOsFeatures] , A list of features to enable on the guest operating system. Applicable only for bootable images.
  /// [interface] , Specifies the disk interface to use for attaching this disk.
  /// [labels] , A set of key/value label pairs to assign to disks. Structure is documented below.
  /// [mode] , The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If you are attaching or creating a boot disk, this must read-write mode.
  /// [provisionedIops] , Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. For more details, see the [Extreme persistent disk documentation](https://cloud.google.com/compute/docs/disks/extreme-persistent-disk) or the [Hyperdisk documentation](https://cloud.google.com/compute/docs/disks/hyperdisks) depending on the selected disk_type.
  /// [provisionedThroughput] , Indicates how much throughput to provision for the disk, in MB/s. This sets the amount of data that can be read or written from the disk per second. Values must greater than or equal to 1. For more details, see the [Hyperdisk documentation](https://cloud.google.com/compute/docs/disks/hyperdisks).
  /// [resourceManagerTags] , A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty. Structure is documented below.
  /// [resourcePolicies] , A list (short name or id) of resource policies to attach to this disk. Currently a max of 1 resource policy is supported.
  /// [source] , The name (not self_link) of the disk (such as those managed by google_compute_disk) to attach. &gt; Note: Either source or source_image is required when creating a new instance except for when creating a local SSD.
  /// [sourceImage] , The image from which to initialize this disk. This can be one of: the image's self_link, projects/{project}/global/images/{image}, projects/{project}/global/images/family/{family}, global/images/{image}, global/images/family/{family}, family/{family}, {project}/{family}, {project}/{image}, {family}, or {image}. &gt; Note: Either source or source_image is required when creating a new instance except for when creating a local SSD.
  /// [sourceImageEncryptionKey] , The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key. Instance templates do not store customer-supplied encryption keys, so you cannot create disks for instances in a managed instance group if the source images are encrypted with your own keys. Structure is documented below.
  /// [sourceSnapshot] , The source snapshot to create this disk. When creating a new instance, one of initializeParams.sourceSnapshot, initializeParams.sourceImage, or disks.source is required except for local SSD.
  /// [sourceSnapshotEncryptionKey] , The customer-supplied encryption key of the source snapshot. Structure is documented below.
  /// [type] , The type of Google Compute Engine disk, can be either "SCRATCH" or "PERSISTENT".
  RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk({
    this.architecture,
    this.autoDelete,
    this.boot,
    this.deviceName,
    this.diskEncryptionKey,
    this.diskName,
    this.diskSizeGb,
    this.diskType,
    this.guestOsFeatures,
    this.interface,
    this.labels,
    this.mode,
    this.provisionedIops,
    this.provisionedThroughput,
    this.resourceManagerTags,
    this.resourcePolicies,
    this.source,
    this.sourceImage,
    this.sourceImageEncryptionKey,
    this.sourceSnapshot,
    this.sourceSnapshotEncryptionKey,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'autoDelete': ?autoDelete,
      'boot': ?boot,
      'deviceName': ?deviceName,
      'diskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskDiskEncryptionKey, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'diskName': ?diskName,
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType,
      'guestOsFeatures': ?guestOsFeatures,
      'interface': ?interface,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': ?mode,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'resourceManagerTags': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag>, List<Map<String, dynamic>>>(resourceManagerTags, (value) => pulumi.Input.encodeList<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourcePolicies': ?resourcePolicies,
      'source': ?source,
      'sourceImage': ?sourceImage,
      'sourceImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey, Map<String, dynamic>>(sourceImageEncryptionKey, (value) => value.toMap()),
      'sourceSnapshot': ?sourceSnapshot,
      'sourceSnapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceSnapshotEncryptionKey, Map<String, dynamic>>(sourceSnapshotEncryptionKey, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk(
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoDelete: (() { final guardedValue = map['autoDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      boot: (() { final guardedValue = map['boot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryptionKey: (() { final guardedValue = map['diskEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskDiskEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskName: (() { final guardedValue = map['diskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guestOsFeatures: (() { final guardedValue = map['guestOsFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      interface: (() { final guardedValue = map['interface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel>(guardedValue, (value) => RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedIops: (() { final guardedValue = map['provisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      provisionedThroughput: (() { final guardedValue = map['provisionedThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceManagerTags: (() { final guardedValue = map['resourceManagerTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag>(guardedValue, (value) => RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceImage: (() { final guardedValue = map['sourceImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceImageEncryptionKey: (() { final guardedValue = map['sourceImageEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceSnapshot: (() { final guardedValue = map['sourceSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceSnapshotEncryptionKey: (() { final guardedValue = map['sourceSnapshotEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceSnapshotEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

