// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeviceDeviceProperty {
  /// The Data Box Edge/Gateway device local capacity in MB.
  final pulumi.Input<int> capacity;
  /// Type of compute roles configured.
  final pulumi.Input<List<String>> configuredRoleTypes;
  /// The Data Box Edge/Gateway device culture.
  final pulumi.Input<String> culture;
  /// The device software version number of the device (e.g. 1.2.18105.6).
  final pulumi.Input<String> hcsVersion;
  /// The Data Box Edge/Gateway device model.
  final pulumi.Input<String> model;
  /// The number of nodes in the cluster.
  final pulumi.Input<int> nodeCount;
  /// The Serial Number of Data Box Edge/Gateway device.
  final pulumi.Input<String> serialNumber;
  /// The Data Box Edge/Gateway device software version.
  final pulumi.Input<String> softwareVersion;
  /// The status of the Data Box Edge/Gateway device.
  final pulumi.Input<String> status;
  /// The Data Box Edge/Gateway device timezone.
  final pulumi.Input<String> timeZone;
  /// The type of the Data Box Edge/Gateway device.
  final pulumi.Input<String> type;

  /// Creates a new [GetDeviceDeviceProperty].
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
  const GetDeviceDeviceProperty({
    required this.capacity,
    required this.configuredRoleTypes,
    required this.culture,
    required this.hcsVersion,
    required this.model,
    required this.nodeCount,
    required this.serialNumber,
    required this.softwareVersion,
    required this.status,
    required this.timeZone,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'configuredRoleTypes': configuredRoleTypes,
      'culture': culture,
      'hcsVersion': hcsVersion,
      'model': model,
      'nodeCount': nodeCount,
      'serialNumber': serialNumber,
      'softwareVersion': softwareVersion,
      'status': status,
      'timeZone': timeZone,
      'type': type,
    };
  }

  factory GetDeviceDeviceProperty.fromMap(Map<String, dynamic> map) {
    return GetDeviceDeviceProperty(
      capacity: pulumi.Input.fromValue(map['capacity'] as int),
      configuredRoleTypes: pulumi.Input.fromValue((map['configuredRoleTypes'] as List).cast<String>()),
      culture: pulumi.Input.fromValue(map['culture'] as String),
      hcsVersion: pulumi.Input.fromValue(map['hcsVersion'] as String),
      model: pulumi.Input.fromValue(map['model'] as String),
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      softwareVersion: pulumi.Input.fromValue(map['softwareVersion'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

