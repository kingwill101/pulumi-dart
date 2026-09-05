// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeviceDeviceProperty {
  /// The Data Box Edge/Gateway device local capacity in MB.
  final pulumi.Input<int?>? capacity;
  /// Type of compute roles configured.
  final pulumi.Input<List<String>?>? configuredRoleTypes;
  /// The Data Box Edge/Gateway device culture.
  final pulumi.Input<String?>? culture;
  /// The device software version number of the device (e.g. 1.2.18105.6).
  final pulumi.Input<String?>? hcsVersion;
  /// The Data Box Edge/Gateway device model.
  final pulumi.Input<String?>? model;
  /// The number of nodes in the cluster.
  final pulumi.Input<int?>? nodeCount;
  /// The Serial Number of Data Box Edge/Gateway device.
  final pulumi.Input<String?>? serialNumber;
  /// The Data Box Edge/Gateway device software version.
  final pulumi.Input<String?>? softwareVersion;
  /// The status of the Data Box Edge/Gateway device.
  final pulumi.Input<String?>? status;
  /// The Data Box Edge/Gateway device timezone.
  final pulumi.Input<String?>? timeZone;
  /// The type of the Data Box Edge/Gateway device.
  final pulumi.Input<String?>? type;

  /// Creates a new [DeviceDeviceProperty].
  /// [capacity] The Data Box Edge/Gateway device local capacity in MB.
  /// [configuredRoleTypes] Type of compute roles configured.
  /// [culture] The Data Box Edge/Gateway device culture.
  /// [hcsVersion] The device software version number of the device (e.g. 1.2.18105.6).
  /// [model] The Data Box Edge/Gateway device model.
  /// [nodeCount] The number of nodes in the cluster.
  /// [serialNumber] The Serial Number of Data Box Edge/Gateway device.
  /// [softwareVersion] The Data Box Edge/Gateway device software version.
  /// [status] The status of the Data Box Edge/Gateway device.
  /// [timeZone] The Data Box Edge/Gateway device timezone.
  /// [type] The type of the Data Box Edge/Gateway device.
  const DeviceDeviceProperty({
    this.capacity,
    this.configuredRoleTypes,
    this.culture,
    this.hcsVersion,
    this.model,
    this.nodeCount,
    this.serialNumber,
    this.softwareVersion,
    this.status,
    this.timeZone,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'configuredRoleTypes': ?configuredRoleTypes,
      'culture': ?culture,
      'hcsVersion': ?hcsVersion,
      'model': ?model,
      'nodeCount': ?nodeCount,
      'serialNumber': ?serialNumber,
      'softwareVersion': ?softwareVersion,
      'status': ?status,
      'timeZone': ?timeZone,
      'type': ?type,
    };
  }

  factory DeviceDeviceProperty.fromMap(Map<String, dynamic> map) {
    return DeviceDeviceProperty(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      configuredRoleTypes: (() { final guardedValue = map['configuredRoleTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      culture: (() { final guardedValue = map['culture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hcsVersion: (() { final guardedValue = map['hcsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      softwareVersion: (() { final guardedValue = map['softwareVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
