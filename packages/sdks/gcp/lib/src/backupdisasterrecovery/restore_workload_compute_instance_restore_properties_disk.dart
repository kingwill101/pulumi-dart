// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_workload_compute_instance_restore_properties_disk_disk_encryption_key.dart';
import 'restore_workload_compute_instance_restore_properties_disk_guest_os_feature.dart';
import 'restore_workload_compute_instance_restore_properties_disk_initialize_params.dart';

class RestoreWorkloadComputeInstanceRestorePropertiesDisk {
  /// Optional. Specifies whether the disk will be auto-deleted when the instance is deleted.
  final pulumi.Input<bool>? autoDelete;

  /// Optional. Indicates that this is a boot disk.
  final pulumi.Input<bool>? boot;

  /// Optional. This is used as an identifier for the disks.
  final pulumi.Input<String>? deviceName;

  /// Optional. Encrypts or decrypts a disk using a customer-supplied encryption key.
  /// Structure is documented below.
  final pulumi.Input<
    RestoreWorkloadComputeInstanceRestorePropertiesDiskDiskEncryptionKey
  >?
  diskEncryptionKey;

  /// Optional. Specifies the disk interface to use for attaching this disk.
  /// Possible values are: `DISK_INTERFACE_UNSPECIFIED`, `SCSI`, `NVME`, `NVDIMM`, `ISCSI`.
  final pulumi.Input<String>? diskInterface;

  /// Optional. The size of the disk in GB.
  final pulumi.Input<int>? diskSizeGb;

  /// Output only. The URI of the disk type resource.
  final pulumi.Input<String>? diskType;

  /// Optional. A list of features to enable on the guest operating system.
  /// Structure is documented below.
  final pulumi.Input<
    List<RestoreWorkloadComputeInstanceRestorePropertiesDiskGuestOsFeature>
  >?
  guestOsFeatures;

  /// Optional. A zero-based index to this disk, where 0 is reserved for the boot disk.
  final pulumi.Input<int>? index;

  /// Optional. Specifies the parameters to initialize this disk.
  /// Structure is documented below.
  final pulumi.Input<
    RestoreWorkloadComputeInstanceRestorePropertiesDiskInitializeParams
  >?
  initializeParams;

  /// Optional. Type of the resource.
  final pulumi.Input<String>? kind;

  /// Optional. Any valid publicly visible licenses.
  final pulumi.Input<List<String>>? licenses;

  /// Optional. The mode in which to attach this disk.
  /// Possible values are: `DISK_MODE_UNSPECIFIED`, `READ_WRITE`, `READ_ONLY`, `LOCKED`.
  final pulumi.Input<String>? mode;

  /// Optional. Specifies the saved state of the disk.
  /// Possible values are: `DISK_SAVED_STATE_UNSPECIFIED`, `PRESERVED`.
  final pulumi.Input<String>? savedState;

  /// Optional. Specifies a valid partial or full URL to an existing Persistent Disk resource.
  final pulumi.Input<String>? source;

  /// Optional. Specifies the type of the disk.
  /// Possible values are: `DISK_TYPE_UNSPECIFIED`, `SCRATCH`, `PERSISTENT`.
  final pulumi.Input<String>? type;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesDisk].
  /// [autoDelete] Optional. Specifies whether the disk will be auto-deleted when the instance is deleted.
  /// [boot] Optional. Indicates that this is a boot disk.
  /// [deviceName] Optional. This is used as an identifier for the disks.
  /// [diskEncryptionKey] Optional. Encrypts or decrypts a disk using a customer-supplied encryption key.
  /// [diskInterface] Optional. Specifies the disk interface to use for attaching this disk.
  /// [diskSizeGb] Optional. The size of the disk in GB.
  /// [diskType] Output only. The URI of the disk type resource.
  /// [guestOsFeatures] Optional. A list of features to enable on the guest operating system.
  /// [index] Optional. A zero-based index to this disk, where 0 is reserved for the boot disk.
  /// [initializeParams] Optional. Specifies the parameters to initialize this disk.
  /// [kind] Optional. Type of the resource.
  /// [licenses] Optional. Any valid publicly visible licenses.
  /// [mode] Optional. The mode in which to attach this disk.
  /// [savedState] Optional. Specifies the saved state of the disk.
  /// [source] Optional. Specifies a valid partial or full URL to an existing Persistent Disk resource.
  /// [type] Optional. Specifies the type of the disk.
  RestoreWorkloadComputeInstanceRestorePropertiesDisk({
    this.autoDelete,
    this.boot,
    this.deviceName,
    this.diskEncryptionKey,
    this.diskInterface,
    this.diskSizeGb,
    this.diskType,
    this.guestOsFeatures,
    this.index,
    this.initializeParams,
    this.kind,
    this.licenses,
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
      'diskEncryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            RestoreWorkloadComputeInstanceRestorePropertiesDiskDiskEncryptionKey,
            Map<String, dynamic>
          >(diskEncryptionKey, (value) => value.toMap()),
      'diskInterface': ?diskInterface,
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType,
      'guestOsFeatures':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              RestoreWorkloadComputeInstanceRestorePropertiesDiskGuestOsFeature
            >,
            List<Map<String, dynamic>>
          >(
            guestOsFeatures,
            (value) =>
                pulumi.Input.encodeList<
                  RestoreWorkloadComputeInstanceRestorePropertiesDiskGuestOsFeature,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'index': ?index,
      'initializeParams':
          ?pulumi.Input.mapOptionalInputValue<
            RestoreWorkloadComputeInstanceRestorePropertiesDiskInitializeParams,
            Map<String, dynamic>
          >(initializeParams, (value) => value.toMap()),
      'kind': ?kind,
      'licenses': ?licenses,
      'mode': ?mode,
      'savedState': ?savedState,
      'source': ?source,
      'type': ?type,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesDisk.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestoreWorkloadComputeInstanceRestorePropertiesDisk(
      autoDelete: (() {
        final guardedValue = map['autoDelete'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      boot: (() {
        final guardedValue = map['boot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      deviceName: (() {
        final guardedValue = map['deviceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskEncryptionKey: (() {
        final guardedValue = map['diskEncryptionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RestoreWorkloadComputeInstanceRestorePropertiesDiskDiskEncryptionKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      diskInterface: (() {
        final guardedValue = map['diskInterface'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskSizeGb: (() {
        final guardedValue = map['diskSizeGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      diskType: (() {
        final guardedValue = map['diskType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      guestOsFeatures: (() {
        final guardedValue = map['guestOsFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            RestoreWorkloadComputeInstanceRestorePropertiesDiskGuestOsFeature
          >(
            guardedValue,
            (value) =>
                RestoreWorkloadComputeInstanceRestorePropertiesDiskGuestOsFeature.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      index: (() {
        final guardedValue = map['index'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      initializeParams: (() {
        final guardedValue = map['initializeParams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RestoreWorkloadComputeInstanceRestorePropertiesDiskInitializeParams.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      licenses: (() {
        final guardedValue = map['licenses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      savedState: (() {
        final guardedValue = map['savedState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
