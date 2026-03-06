// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_group_device.dart';

/// Input properties used for looking up and filtering DeviceGroup resources.
class DeviceGroupState {
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

  /// Creates a new [DeviceGroupState].
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
  const DeviceGroupState({
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

  factory DeviceGroupState.fromMap(Map<String, dynamic> map) {
    return DeviceGroupState(
      autoSync: (() { final guardedValue = map['autoSync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceGroupDevice>(guardedValue, (value) => DeviceGroupDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fullLoadOnSync: (() { final guardedValue = map['fullLoadOnSync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      incrementalConfig: (() { final guardedValue = map['incrementalConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkFailover: (() { final guardedValue = map['networkFailover']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saveOnAutoSync: (() { final guardedValue = map['saveOnAutoSync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

