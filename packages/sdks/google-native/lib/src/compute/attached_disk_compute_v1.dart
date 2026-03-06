// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_disk_initialize_params_compute_v1.dart';
import 'attached_disk_interface_compute_v1.dart';
import 'attached_disk_mode_compute_v1.dart';
import 'attached_disk_saved_state_compute_v1.dart';
import 'attached_disk_type_compute_v1.dart';
import 'customer_encryption_key_compute_v1.dart';
import 'guest_os_feature_compute_v1.dart';

/// An instance-attached disk resource.
class AttachedDiskComputeV1 {
  /// Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  final pulumi.Input<bool>? autoDelete;
  /// Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.
  final pulumi.Input<bool>? boot;
  /// Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  final pulumi.Input<String>? deviceName;
  /// Encrypts or decrypts a disk using a customer-supplied encryption key. If you are creating a new disk, this field encrypts the new disk using an encryption key that you provide. If you are attaching an existing disk that is already encrypted, this field decrypts the disk using the customer-supplied encryption key. If you encrypt a disk using a customer-supplied key, you must provide the same key again when you attempt to use this resource at a later time. For example, you must provide the key when you create a snapshot or an image from the disk or when you attach the disk to a virtual machine instance. If you do not provide an encryption key, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the disk later. Instance templates do not store customer-supplied encryption keys, so you cannot use your own keys to encrypt disks in a managed instance group.
  final pulumi.Input<CustomerEncryptionKeyComputeV1>? diskEncryptionKey;
  /// The size of the disk in GB.
  final pulumi.Input<String>? diskSizeGb;
  /// [Input Only] Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error.
  final pulumi.Input<bool>? forceAttach;
  /// A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  final pulumi.Input<List<GuestOsFeatureComputeV1>>? guestOsFeatures;
  /// [Input Only] Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
  final pulumi.Input<AttachedDiskInitializeParamsComputeV1>? initializeParams;
  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. For most machine types, the default is SCSI. Local SSDs can use either NVME or SCSI. In certain configurations, persistent disks can use NVMe. For more information, see About persistent disks.
  final pulumi.Input<AttachedDiskInterfaceComputeV1>? interface;
  /// The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode.
  final pulumi.Input<AttachedDiskModeComputeV1>? mode;
  /// For LocalSSD disks on VM Instances in STOPPED or SUSPENDED state, this field is set to PRESERVED if the LocalSSD data has been saved to a persistent location by customer request. (see the discard_local_ssd option on Stop/Suspend). Read-only in the api.
  final pulumi.Input<AttachedDiskSavedStateComputeV1>? savedState;
  /// Specifies a valid partial or full URL to an existing Persistent Disk resource. When creating a new instance, one of initializeParams.sourceImage or initializeParams.sourceSnapshot or disks.source is required except for local SSD. If desired, you can also attach existing non-root persistent disks using this property. This field is only applicable for persistent disks. Note that for InstanceTemplate, specify the disk name for zonal disk, and the URL for regional disk.
  final pulumi.Input<String>? source;
  /// Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified, the default is PERSISTENT.
  final pulumi.Input<AttachedDiskTypeComputeV1>? type;

  /// Creates a new [AttachedDiskComputeV1].
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
  const AttachedDiskComputeV1({
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
      'diskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKeyComputeV1, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'diskSizeGb': ?diskSizeGb,
      'forceAttach': ?forceAttach,
      'guestOsFeatures': ?pulumi.Input.mapOptionalInputValue<List<GuestOsFeatureComputeV1>, List<Map<String, dynamic>>>(guestOsFeatures, (value) => pulumi.Input.encodeList<GuestOsFeatureComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initializeParams': ?pulumi.Input.mapOptionalInputValue<AttachedDiskInitializeParamsComputeV1, Map<String, dynamic>>(initializeParams, (value) => value.toMap()),
      'interface': ?pulumi.Input.mapOptionalInputValue<AttachedDiskInterfaceComputeV1, String>(interface, (value) => value.wireValue),
      'mode': ?pulumi.Input.mapOptionalInputValue<AttachedDiskModeComputeV1, String>(mode, (value) => value.wireValue),
      'savedState': ?pulumi.Input.mapOptionalInputValue<AttachedDiskSavedStateComputeV1, String>(savedState, (value) => value.wireValue),
      'source': ?source,
      'type': ?pulumi.Input.mapOptionalInputValue<AttachedDiskTypeComputeV1, String>(type, (value) => value.wireValue),
    };
  }

  factory AttachedDiskComputeV1.fromMap(Map<String, dynamic> map) {
    return AttachedDiskComputeV1(
      autoDelete: (() { final guardedValue = map['autoDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      boot: (() { final guardedValue = map['boot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryptionKey: (() { final guardedValue = map['diskEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerEncryptionKeyComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceAttach: (() { final guardedValue = map['forceAttach']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      guestOsFeatures: (() { final guardedValue = map['guestOsFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GuestOsFeatureComputeV1>(guardedValue, (value) => GuestOsFeatureComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      initializeParams: (() { final guardedValue = map['initializeParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedDiskInitializeParamsComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interface: (() { final guardedValue = map['interface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedDiskInterfaceComputeV1.fromValue(guardedValue as String)); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedDiskModeComputeV1.fromValue(guardedValue as String)); })(),
      savedState: (() { final guardedValue = map['savedState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedDiskSavedStateComputeV1.fromValue(guardedValue as String)); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedDiskTypeComputeV1.fromValue(guardedValue as String)); })(),
    );
  }
}

