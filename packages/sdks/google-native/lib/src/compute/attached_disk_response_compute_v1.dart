// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_disk_initialize_params_response_compute_v1.dart';
import 'customer_encryption_key_response_compute_v1.dart';
import 'guest_os_feature_response_compute_v1.dart';
import 'initial_state_config_response_compute_v1.dart';

/// An instance-attached disk resource.
class AttachedDiskResponseComputeV1 {
  /// The architecture of the attached disk. Valid values are ARM64 or X86_64.
  final pulumi.Input<String> architecture;
  /// Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  final pulumi.Input<bool> autoDelete;
  /// Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.
  final pulumi.Input<bool> boot;
  /// Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  final pulumi.Input<String> deviceName;
  /// Encrypts or decrypts a disk using a customer-supplied encryption key. If you are creating a new disk, this field encrypts the new disk using an encryption key that you provide. If you are attaching an existing disk that is already encrypted, this field decrypts the disk using the customer-supplied encryption key. If you encrypt a disk using a customer-supplied key, you must provide the same key again when you attempt to use this resource at a later time. For example, you must provide the key when you create a snapshot or an image from the disk or when you attach the disk to a virtual machine instance. If you do not provide an encryption key, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the disk later. Instance templates do not store customer-supplied encryption keys, so you cannot use your own keys to encrypt disks in a managed instance group.
  final pulumi.Input<CustomerEncryptionKeyResponseComputeV1> diskEncryptionKey;
  /// The size of the disk in GB.
  final pulumi.Input<String> diskSizeGb;
  /// [Input Only] Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error.
  final pulumi.Input<bool> forceAttach;
  /// A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  final pulumi.Input<List<GuestOsFeatureResponseComputeV1>> guestOsFeatures;
  /// A zero-based index to this disk, where 0 is reserved for the boot disk. If you have many disks attached to an instance, each disk would have a unique index number.
  final pulumi.Input<int> index;
  /// [Input Only] Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
  final pulumi.Input<AttachedDiskInitializeParamsResponseComputeV1> initializeParams;
  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. For most machine types, the default is SCSI. Local SSDs can use either NVME or SCSI. In certain configurations, persistent disks can use NVMe. For more information, see About persistent disks.
  final pulumi.Input<String> interface;
  /// Type of the resource. Always compute#attachedDisk for attached disks.
  final pulumi.Input<String> kind;
  /// Any valid publicly visible licenses.
  final pulumi.Input<List<String>> licenses;
  /// The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode.
  final pulumi.Input<String> mode;
  /// For LocalSSD disks on VM Instances in STOPPED or SUSPENDED state, this field is set to PRESERVED if the LocalSSD data has been saved to a persistent location by customer request. (see the discard_local_ssd option on Stop/Suspend). Read-only in the api.
  final pulumi.Input<String> savedState;
  /// shielded vm initial state stored on disk
  final pulumi.Input<InitialStateConfigResponseComputeV1> shieldedInstanceInitialState;
  /// Specifies a valid partial or full URL to an existing Persistent Disk resource. When creating a new instance, one of initializeParams.sourceImage or initializeParams.sourceSnapshot or disks.source is required except for local SSD. If desired, you can also attach existing non-root persistent disks using this property. This field is only applicable for persistent disks. Note that for InstanceTemplate, specify the disk name for zonal disk, and the URL for regional disk.
  final pulumi.Input<String> source;
  /// Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified, the default is PERSISTENT.
  final pulumi.Input<String> type;

  /// Creates a new [AttachedDiskResponseComputeV1].
  /// [architecture] The architecture of the attached disk. Valid values are ARM64 or X86_64.
  /// [autoDelete] Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  /// [boot] Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.
  /// [deviceName] Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  /// [diskEncryptionKey] Encrypts or decrypts a disk using a customer-supplied encryption key. If you are creating a new disk, this field encrypts the new disk using an encryption key that you provide. If you are attaching an existing disk that is already encrypted, this field decrypts the disk using the customer-supplied encryption key. If you encrypt a disk using a customer-supplied key, you must provide the same key again when you attempt to use this resource at a later time. For example, you must provide the key when you create a snapshot or an image from the disk or when you attach the disk to a virtual machine instance. If you do not provide an encryption key, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the disk later. Instance templates do not store customer-supplied encryption keys, so you cannot use your own keys to encrypt disks in a managed instance group.
  /// [diskSizeGb] The size of the disk in GB.
  /// [forceAttach] [Input Only] Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error.
  /// [guestOsFeatures] A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  /// [index] A zero-based index to this disk, where 0 is reserved for the boot disk. If you have many disks attached to an instance, each disk would have a unique index number.
  /// [initializeParams] [Input Only] Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. For most machine types, the default is SCSI. Local SSDs can use either NVME or SCSI. In certain configurations, persistent disks can use NVMe. For more information, see About persistent disks.
  /// [kind] Type of the resource. Always compute#attachedDisk for attached disks.
  /// [licenses] Any valid publicly visible licenses.
  /// [mode] The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode.
  /// [savedState] For LocalSSD disks on VM Instances in STOPPED or SUSPENDED state, this field is set to PRESERVED if the LocalSSD data has been saved to a persistent location by customer request. (see the discard_local_ssd option on Stop/Suspend). Read-only in the api.
  /// [shieldedInstanceInitialState] shielded vm initial state stored on disk
  /// [source] Specifies a valid partial or full URL to an existing Persistent Disk resource. When creating a new instance, one of initializeParams.sourceImage or initializeParams.sourceSnapshot or disks.source is required except for local SSD. If desired, you can also attach existing non-root persistent disks using this property. This field is only applicable for persistent disks. Note that for InstanceTemplate, specify the disk name for zonal disk, and the URL for regional disk.
  /// [type] Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified, the default is PERSISTENT.
  const AttachedDiskResponseComputeV1({
    required this.architecture,
    required this.autoDelete,
    required this.boot,
    required this.deviceName,
    required this.diskEncryptionKey,
    required this.diskSizeGb,
    required this.forceAttach,
    required this.guestOsFeatures,
    required this.index,
    required this.initializeParams,
    required this.interface,
    required this.kind,
    required this.licenses,
    required this.mode,
    required this.savedState,
    required this.shieldedInstanceInitialState,
    required this.source,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'autoDelete': autoDelete,
      'boot': boot,
      'deviceName': deviceName,
      'diskEncryptionKey': pulumi.Input.mapInputValue<CustomerEncryptionKeyResponseComputeV1, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'diskSizeGb': diskSizeGb,
      'forceAttach': forceAttach,
      'guestOsFeatures': pulumi.Input.mapInputValue<List<GuestOsFeatureResponseComputeV1>, List<Map<String, dynamic>>>(guestOsFeatures, (value) => pulumi.Input.encodeList<GuestOsFeatureResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'index': index,
      'initializeParams': pulumi.Input.mapInputValue<AttachedDiskInitializeParamsResponseComputeV1, Map<String, dynamic>>(initializeParams, (value) => value.toMap()),
      'interface': interface,
      'kind': kind,
      'licenses': licenses,
      'mode': mode,
      'savedState': savedState,
      'shieldedInstanceInitialState': pulumi.Input.mapInputValue<InitialStateConfigResponseComputeV1, Map<String, dynamic>>(shieldedInstanceInitialState, (value) => value.toMap()),
      'source': source,
      'type': type,
    };
  }

  factory AttachedDiskResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return AttachedDiskResponseComputeV1(
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
      autoDelete: pulumi.Input.fromValue(map['autoDelete'] as bool),
      boot: pulumi.Input.fromValue(map['boot'] as bool),
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      diskEncryptionKey: pulumi.Input.fromValue(CustomerEncryptionKeyResponseComputeV1.fromMap((map['diskEncryptionKey']! as Map).cast<String, dynamic>())),
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as String),
      forceAttach: pulumi.Input.fromValue(map['forceAttach'] as bool),
      guestOsFeatures: pulumi.Input.fromValue(pulumi.Input.decodeList<GuestOsFeatureResponseComputeV1>(map['guestOsFeatures']!, (value) => GuestOsFeatureResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      index: pulumi.Input.fromValue(map['index'] as int),
      initializeParams: pulumi.Input.fromValue(AttachedDiskInitializeParamsResponseComputeV1.fromMap((map['initializeParams']! as Map).cast<String, dynamic>())),
      interface: pulumi.Input.fromValue(map['interface'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      licenses: pulumi.Input.fromValue((map['licenses'] as List).cast<String>()),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      savedState: pulumi.Input.fromValue(map['savedState'] as String),
      shieldedInstanceInitialState: pulumi.Input.fromValue(InitialStateConfigResponseComputeV1.fromMap((map['shieldedInstanceInitialState']! as Map).cast<String, dynamic>())),
      source: pulumi.Input.fromValue(map['source'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
