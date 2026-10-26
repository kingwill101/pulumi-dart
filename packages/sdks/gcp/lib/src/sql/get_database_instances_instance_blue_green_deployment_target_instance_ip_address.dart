// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceBlueGreenDeploymentTargetInstanceIpAddress {
  final pulumi.Input<String> ipAddress;
  final pulumi.Input<String> timeToRetire;
  final pulumi.Input<String> type;

  /// Creates a new [GetDatabaseInstancesInstanceBlueGreenDeploymentTargetInstanceIpAddress].
  /// [ipAddress] Required.
  /// [timeToRetire] Required.
  /// [type] Required.
  const GetDatabaseInstancesInstanceBlueGreenDeploymentTargetInstanceIpAddress({
    required this.ipAddress,
    required this.timeToRetire,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'timeToRetire': timeToRetire,
      'type': type,
    };
  }

  factory GetDatabaseInstancesInstanceBlueGreenDeploymentTargetInstanceIpAddress.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceBlueGreenDeploymentTargetInstanceIpAddress(
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      timeToRetire: pulumi.Input.fromValue(map['timeToRetire'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
