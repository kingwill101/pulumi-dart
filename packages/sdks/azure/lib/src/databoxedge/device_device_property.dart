// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeviceDeviceProperty {
  /// The Data Box Edge/Gateway device local capacity in MB.
  final pulumi.Input<int>? capacity;
  /// Type of compute roles configured.
  final pulumi.Input<List<String>>? configuredRoleTypes;
  /// The Data Box Edge/Gateway device culture.
  final pulumi.Input<String>? culture;
  /// The device software version number of the device (e.g. 1.2.18105.6).
  final pulumi.Input<String>? hcsVersion;
  /// The Data Box Edge/Gateway device model.
  final pulumi.Input<String>? model;
  /// The number of nodes in the cluster.
  final pulumi.Input<int>? nodeCount;
  /// The Serial Number of Data Box Edge/Gateway device.
  final pulumi.Input<String>? serialNumber;
  /// The Data Box Edge/Gateway device software version.
  final pulumi.Input<String>? softwareVersion;
  /// The status of the Data Box Edge/Gateway device.
  final pulumi.Input<String>? status;
  /// The Data Box Edge/Gateway device timezone.
  final pulumi.Input<String>? timeZone;
  /// The type of the Data Box Edge/Gateway device.
  final pulumi.Input<String>? type;

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
  DeviceDeviceProperty({
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
      capacity: map['capacity'] == null ? null : (map['capacity'] as int).input(),
      configuredRoleTypes: map['configuredRoleTypes'] == null ? null : ((map['configuredRoleTypes'] as List).cast<String>()).input(),
      culture: map['culture'] == null ? null : (map['culture'] as String).input(),
      hcsVersion: map['hcsVersion'] == null ? null : (map['hcsVersion'] as String).input(),
      model: map['model'] == null ? null : (map['model'] as String).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount'] as int).input(),
      serialNumber: map['serialNumber'] == null ? null : (map['serialNumber'] as String).input(),
      softwareVersion: map['softwareVersion'] == null ? null : (map['softwareVersion'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

