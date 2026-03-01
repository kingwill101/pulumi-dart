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
    pulumi.Output<String>? autoSync,
    pulumi.Output<String>? description,
    pulumi.Output<List<DeviceGroupDevice>>? devices,
    pulumi.Output<String>? fullLoadOnSync,
    pulumi.Output<int>? incrementalConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkFailover,
    pulumi.Output<String>? partition,
    pulumi.Output<String>? saveOnAutoSync,
    pulumi.Output<String>? type,
  }) :
      autoSync = pulumi.Input.asOptionalInput<String>(autoSync),
      description = pulumi.Input.asOptionalInput<String>(description),
      devices = pulumi.Input.asOptionalInput<List<DeviceGroupDevice>>(devices),
      fullLoadOnSync = pulumi.Input.asOptionalInput<String>(fullLoadOnSync),
      incrementalConfig = pulumi.Input.asOptionalInput<int>(incrementalConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkFailover = pulumi.Input.asOptionalInput<String>(networkFailover),
      partition = pulumi.Input.asOptionalInput<String>(partition),
      saveOnAutoSync = pulumi.Input.asOptionalInput<String>(saveOnAutoSync),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      autoSync: map['autoSync'] == null ? null : pulumi.Output.create<String>(map['autoSync'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      devices: map['devices'] == null ? null : pulumi.Output.create<List<DeviceGroupDevice>>(pulumi.Input.decodeList<DeviceGroupDevice>(map['devices'], (value) => DeviceGroupDevice.fromMap((value as Map).cast<String, dynamic>()))),
      fullLoadOnSync: map['fullLoadOnSync'] == null ? null : pulumi.Output.create<String>(map['fullLoadOnSync'] as String),
      incrementalConfig: map['incrementalConfig'] == null ? null : pulumi.Output.create<int>(map['incrementalConfig'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkFailover: map['networkFailover'] == null ? null : pulumi.Output.create<String>(map['networkFailover'] as String),
      partition: map['partition'] == null ? null : pulumi.Output.create<String>(map['partition'] as String),
      saveOnAutoSync: map['saveOnAutoSync'] == null ? null : pulumi.Output.create<String>(map['saveOnAutoSync'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

