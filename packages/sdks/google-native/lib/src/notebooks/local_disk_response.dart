// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_disk_initialize_params_response.dart';
import 'runtime_guest_os_feature_response.dart';

/// A Local attached disk resource.
class LocalDiskResponse {
  /// Optional. Output only. Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  final pulumi.Input<bool> autoDelete;

  /// Optional. Output only. Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.
  final pulumi.Input<bool> boot;

  /// Optional. Output only. Specifies a unique device name of your choice that is reflected into the `/dev/disk/by-id/google-*` tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  final pulumi.Input<String> deviceName;

  /// Indicates a list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  final pulumi.Input<List<RuntimeGuestOsFeatureResponse>> guestOsFeatures;

  /// A zero-based index to this disk, where 0 is reserved for the boot disk. If you have many disks attached to an instance, each disk would have a unique index number.
  final pulumi.Input<int> index;

  /// Input only. Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
  final pulumi.Input<LocalDiskInitializeParamsResponse> initializeParams;

  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI and the request will fail if you attempt to attach a persistent disk in any other format than SCSI. Local SSDs can use either NVME or SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance. Valid values: * `NVME` * `SCSI`
  final pulumi.Input<String> interface;

  /// Type of the resource. Always compute#attachedDisk for attached disks.
  final pulumi.Input<String> kind;

  /// Any valid publicly visible licenses.
  final pulumi.Input<List<String>> licenses;

  /// The mode in which to attach this disk, either `READ_WRITE` or `READ_ONLY`. If not specified, the default is to attach the disk in `READ_WRITE` mode. Valid values: * `READ_ONLY` * `READ_WRITE`
  final pulumi.Input<String> mode;

  /// Specifies a valid partial or full URL to an existing Persistent Disk resource.
  final pulumi.Input<String> source;

  /// Specifies the type of the disk, either `SCRATCH` or `PERSISTENT`. If not specified, the default is `PERSISTENT`. Valid values: * `PERSISTENT` * `SCRATCH`
  final pulumi.Input<String> type;

  /// Creates a new [LocalDiskResponse].
  /// [autoDelete] Optional. Output only. Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  /// [boot] Optional. Output only. Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.
  /// [deviceName] Optional. Output only. Specifies a unique device name of your choice that is reflected into the `/dev/disk/by-id/google-*` tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  /// [guestOsFeatures] Indicates a list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  /// [index] A zero-based index to this disk, where 0 is reserved for the boot disk. If you have many disks attached to an instance, each disk would have a unique index number.
  /// [initializeParams] Input only. Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI and the request will fail if you attempt to attach a persistent disk in any other format than SCSI. Local SSDs can use either NVME or SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance. Valid values: * `NVME` * `SCSI`
  /// [kind] Type of the resource. Always compute#attachedDisk for attached disks.
  /// [licenses] Any valid publicly visible licenses.
  /// [mode] The mode in which to attach this disk, either `READ_WRITE` or `READ_ONLY`. If not specified, the default is to attach the disk in `READ_WRITE` mode. Valid values: * `READ_ONLY` * `READ_WRITE`
  /// [source] Specifies a valid partial or full URL to an existing Persistent Disk resource.
  /// [type] Specifies the type of the disk, either `SCRATCH` or `PERSISTENT`. If not specified, the default is `PERSISTENT`. Valid values: * `PERSISTENT` * `SCRATCH`
  LocalDiskResponse({
    required this.autoDelete,
    required this.boot,
    required this.deviceName,
    required this.guestOsFeatures,
    required this.index,
    required this.initializeParams,
    required this.interface,
    required this.kind,
    required this.licenses,
    required this.mode,
    required this.source,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDelete': autoDelete,
      'boot': boot,
      'deviceName': deviceName,
      'guestOsFeatures':
          pulumi.Input.mapInputValue<
            List<RuntimeGuestOsFeatureResponse>,
            List<Map<String, dynamic>>
          >(
            guestOsFeatures,
            (value) =>
                pulumi.Input.encodeList<
                  RuntimeGuestOsFeatureResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'index': index,
      'initializeParams':
          pulumi.Input.mapInputValue<
            LocalDiskInitializeParamsResponse,
            Map<String, dynamic>
          >(initializeParams, (value) => value.toMap()),
      'interface': interface,
      'kind': kind,
      'licenses': licenses,
      'mode': mode,
      'source': source,
      'type': type,
    };
  }

  factory LocalDiskResponse.fromMap(Map<String, dynamic> map) {
    return LocalDiskResponse(
      autoDelete: pulumi.Input.fromValue(map['autoDelete'] as bool),
      boot: pulumi.Input.fromValue(map['boot'] as bool),
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      guestOsFeatures: pulumi.Input.fromValue(
        pulumi.Input.decodeList<RuntimeGuestOsFeatureResponse>(
          map['guestOsFeatures']!,
          (value) => RuntimeGuestOsFeatureResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      index: pulumi.Input.fromValue(map['index'] as int),
      initializeParams: pulumi.Input.fromValue(
        LocalDiskInitializeParamsResponse.fromMap(
          (map['initializeParams']! as Map).cast<String, dynamic>(),
        ),
      ),
      interface: pulumi.Input.fromValue(map['interface'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      licenses: pulumi.Input.fromValue(
        (map['licenses'] as List).cast<String>(),
      ),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
