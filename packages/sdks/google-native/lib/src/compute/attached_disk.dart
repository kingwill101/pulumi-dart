// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_disk_initialize_params.dart';
import 'attached_disk_interface.dart';
import 'attached_disk_mode.dart';
import 'attached_disk_saved_state.dart';
import 'attached_disk_type.dart';
import 'customer_encryption_key.dart';
import 'guest_os_feature.dart';

/// An instance-attached disk resource.
class AttachedDisk {
  /// Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  final pulumi.Input<bool>? autoDelete;
  /// Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.
  final pulumi.Input<bool>? boot;
  /// Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  final pulumi.Input<String>? deviceName;
  /// Encrypts or decrypts a disk using a customer-supplied encryption key. If you are creating a new disk, this field encrypts the new disk using an encryption key that you provide. If you are attaching an existing disk that is already encrypted, this field decrypts the disk using the customer-supplied encryption key. If you encrypt a disk using a customer-supplied key, you must provide the same key again when you attempt to use this resource at a later time. For example, you must provide the key when you create a snapshot or an image from the disk or when you attach the disk to a virtual machine instance. If you do not provide an encryption key, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the disk later. Instance templates do not store customer-supplied encryption keys, so you cannot use your own keys to encrypt disks in a managed instance group.
  final pulumi.Input<CustomerEncryptionKey>? diskEncryptionKey;
  /// The size of the disk in GB.
  final pulumi.Input<String>? diskSizeGb;
  /// [Input Only] Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error.
  final pulumi.Input<bool>? forceAttach;
  /// A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  final pulumi.Input<List<GuestOsFeature>>? guestOsFeatures;
  /// [Input Only] Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
  final pulumi.Input<AttachedDiskInitializeParams>? initializeParams;
  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. For most machine types, the default is SCSI. Local SSDs can use either NVME or SCSI. In certain configurations, persistent disks can use NVMe. For more information, see About persistent disks.
  final pulumi.Input<AttachedDiskInterface>? interface;
  /// The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode.
  final pulumi.Input<AttachedDiskMode>? mode;
  /// For LocalSSD disks on VM Instances in STOPPED or SUSPENDED state, this field is set to PRESERVED if the LocalSSD data has been saved to a persistent location by customer request. (see the discard_local_ssd option on Stop/Suspend). Read-only in the api.
  final pulumi.Input<AttachedDiskSavedState>? savedState;
  /// Specifies a valid partial or full URL to an existing Persistent Disk resource. When creating a new instance, one of initializeParams.sourceImage or initializeParams.sourceSnapshot or disks.source is required except for local SSD. If desired, you can also attach existing non-root persistent disks using this property. This field is only applicable for persistent disks. Note that for InstanceTemplate, specify the disk name for zonal disk, and the URL for regional disk.
  final pulumi.Input<String>? source;
  /// Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified, the default is PERSISTENT.
  final pulumi.Input<AttachedDiskType>? type;

  /// Creates a new [AttachedDisk].
  /// [autoDelete] Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  /// [boot] Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.
  /// [deviceName] Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  /// [diskEncryptionKey] Encrypts or decrypts a disk using a customer-supplied encryption key. If you are creating a new disk, this field encrypts the new disk using an encryption key that you provide. If you are attaching an existing disk that is already encrypted, this field decrypts the disk using the customer-supplied encryption key. If you encrypt a disk using a customer-supplied key, you must provide the same key again when you attempt to use this resource at a later time. For example, you must provide the key when you create a snapshot or an image from the disk or when you attach the disk to a virtual machine instance. If you do not provide an encryption key, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the disk later. Instance templates do not store customer-supplied encryption keys, so you cannot use your own keys to encrypt disks in a managed instance group.
  /// [diskSizeGb] The size of the disk in GB.
  /// [forceAttach] [Input Only] Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error.
  /// [guestOsFeatures] A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  /// [initializeParams] [Input Only] Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. For most machine types, the default is SCSI. Local SSDs can use either NVME or SCSI. In certain configurations, persistent disks can use NVMe. For more information, see About persistent disks.
  /// [mode] The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode.
  /// [savedState] For LocalSSD disks on VM Instances in STOPPED or SUSPENDED state, this field is set to PRESERVED if the LocalSSD data has been saved to a persistent location by customer request. (see the discard_local_ssd option on Stop/Suspend). Read-only in the api.
  /// [source] Specifies a valid partial or full URL to an existing Persistent Disk resource. When creating a new instance, one of initializeParams.sourceImage or initializeParams.sourceSnapshot or disks.source is required except for local SSD. If desired, you can also attach existing non-root persistent disks using this property. This field is only applicable for persistent disks. Note that for InstanceTemplate, specify the disk name for zonal disk, and the URL for regional disk.
  /// [type] Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified, the default is PERSISTENT.
  AttachedDisk({
    this.autoDelete,
    this.boot,
    this.deviceName,
    this.diskEncryptionKey,
    this.diskSizeGb,
    this.forceAttach,
    this.guestOsFeatures,
    this.initializeParams,
    this.interface,
    this.mode,
    this.savedState,
    this.source,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDelete': ?autoDelete,
      'boot': ?boot,
      'deviceName': ?deviceName,
      'diskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKey, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'diskSizeGb': ?diskSizeGb,
      'forceAttach': ?forceAttach,
      'guestOsFeatures': ?pulumi.Input.mapOptionalInputValue<List<GuestOsFeature>, List<Map<String, dynamic>>>(guestOsFeatures, (value) => pulumi.Input.encodeList<GuestOsFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initializeParams': ?pulumi.Input.mapOptionalInputValue<AttachedDiskInitializeParams, Map<String, dynamic>>(initializeParams, (value) => value.toMap()),
      'interface': ?pulumi.Input.mapOptionalInputValue<AttachedDiskInterface, String>(interface, (value) => value.value),
      'mode': ?pulumi.Input.mapOptionalInputValue<AttachedDiskMode, String>(mode, (value) => value.value),
      'savedState': ?pulumi.Input.mapOptionalInputValue<AttachedDiskSavedState, String>(savedState, (value) => value.value),
      'source': ?source,
      'type': ?pulumi.Input.mapOptionalInputValue<AttachedDiskType, String>(type, (value) => value.value),
    };
  }

  factory AttachedDisk.fromMap(Map<String, dynamic> map) {
    return AttachedDisk(
      autoDelete: map['autoDelete'] == null ? null : (map['autoDelete'] as bool).input(),
      boot: map['boot'] == null ? null : (map['boot'] as bool).input(),
      deviceName: map['deviceName'] == null ? null : (map['deviceName'] as String).input(),
      diskEncryptionKey: map['diskEncryptionKey'] == null ? null : (CustomerEncryptionKey.fromMap((map['diskEncryptionKey'] as Map).cast<String, dynamic>())).input(),
      diskSizeGb: map['diskSizeGb'] == null ? null : (map['diskSizeGb'] as String).input(),
      forceAttach: map['forceAttach'] == null ? null : (map['forceAttach'] as bool).input(),
      guestOsFeatures: map['guestOsFeatures'] == null ? null : (pulumi.Input.decodeList<GuestOsFeature>(map['guestOsFeatures'], (value) => GuestOsFeature.fromMap((value as Map).cast<String, dynamic>()))).input(),
      initializeParams: map['initializeParams'] == null ? null : (AttachedDiskInitializeParams.fromMap((map['initializeParams'] as Map).cast<String, dynamic>())).input(),
      interface: map['interface'] == null ? null : (AttachedDiskInterface.fromValue(map['interface'] as String)).input(),
      mode: map['mode'] == null ? null : (AttachedDiskMode.fromValue(map['mode'] as String)).input(),
      savedState: map['savedState'] == null ? null : (AttachedDiskSavedState.fromValue(map['savedState'] as String)).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
      type: map['type'] == null ? null : (AttachedDiskType.fromValue(map['type'] as String)).input(),
    );
  }
}

