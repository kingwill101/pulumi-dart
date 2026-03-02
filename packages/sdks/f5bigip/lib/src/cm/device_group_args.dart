// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_group_device.dart';

/// {@template pulumi_cm_device_group_device_group_args_doc}
/// The set of arguments for DeviceGroup.
/// {@endtemplate}
/// {@macro pulumi_cm_device_group_device_group_args_doc}
class DeviceGroupArgs {
  /// Specifies if the device-group will automatically sync configuration data to its members
  final pulumi.Input<String>? autoSync;
  /// Description of Device group
  final pulumi.Input<String>? description;
  /// Name of the device to be included in device group, this need to be configured before using devicegroup resource
  final pulumi.Input<List<DeviceGroupDevice>>? devices;
  /// Specifies if the device-group will perform a full-load upon sync
  final pulumi.Input<String>? fullLoadOnSync;
  /// Specifies the maximum size (in KB) to devote to incremental config sync cached transactions. The default is 1024 KB.
  final pulumi.Input<int>? incrementalConfig;
  /// Is the name of the device Group
  final pulumi.Input<String>? name;
  /// Specifies if the device-group will use a network connection for failover
  final pulumi.Input<String>? networkFailover;
  /// Device administrative partition
  final pulumi.Input<String>? partition;
  /// Specifies whether the configuration should be saved upon auto-sync.
  final pulumi.Input<String>? saveOnAutoSync;
  /// Specifies if the device-group will be used for failover or resource syncing
  final pulumi.Input<String>? type;

  /// Creates a new [DeviceGroupArgs].
  /// [autoSync] Specifies if the device-group will automatically sync configuration data to its members
  /// [description] Description of Device group
  /// [devices] Name of the device to be included in device group, this need to be configured before using devicegroup resource
  /// [fullLoadOnSync] Specifies if the device-group will perform a full-load upon sync
  /// [incrementalConfig] Specifies the maximum size (in KB) to devote to incremental config sync cached transactions. The default is 1024 KB.
  /// [name] Is the name of the device Group
  /// [networkFailover] Specifies if the device-group will use a network connection for failover
  /// [partition] Device administrative partition
  /// [saveOnAutoSync] Specifies whether the configuration should be saved upon auto-sync.
  /// [type] Specifies if the device-group will be used for failover or resource syncing
  DeviceGroupArgs({
    this.autoSync,
    this.description,
    this.devices,
    this.fullLoadOnSync,
    this.incrementalConfig,
    this.name,
    this.networkFailover,
    this.partition,
    this.saveOnAutoSync,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSync': ?autoSync,
      'description': ?description,
      'devices': ?pulumi.Input.mapOptionalInputValue<List<DeviceGroupDevice>, List<Map<String, dynamic>>>(devices, (value) => pulumi.Input.encodeList<DeviceGroupDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fullLoadOnSync': ?fullLoadOnSync,
      'incrementalConfig': ?incrementalConfig,
      'name': ?name,
      'networkFailover': ?networkFailover,
      'partition': ?partition,
      'saveOnAutoSync': ?saveOnAutoSync,
      'type': ?type,
    };
  }

  factory DeviceGroupArgs.fromMap(Map<String, dynamic> map) {
    return DeviceGroupArgs(
      autoSync: map['autoSync'] == null ? null : (map['autoSync']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      devices: map['devices'] == null ? null : (pulumi.Input.decodeList<DeviceGroupDevice>(map['devices']!, (value) => DeviceGroupDevice.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fullLoadOnSync: map['fullLoadOnSync'] == null ? null : (map['fullLoadOnSync']! as String).input(),
      incrementalConfig: map['incrementalConfig'] == null ? null : (map['incrementalConfig']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkFailover: map['networkFailover'] == null ? null : (map['networkFailover']! as String).input(),
      partition: map['partition'] == null ? null : (map['partition']! as String).input(),
      saveOnAutoSync: map['saveOnAutoSync'] == null ? null : (map['saveOnAutoSync']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

