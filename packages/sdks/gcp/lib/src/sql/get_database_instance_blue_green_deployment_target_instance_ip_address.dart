// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress {
  final pulumi.Input<String> ipAddress;
  final pulumi.Input<String> timeToRetire;
  final pulumi.Input<String> type;

  /// Creates a new [GetDatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress].
  /// [ipAddress] Required.
  /// [timeToRetire] Required.
  /// [type] Required.
  const GetDatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress({
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

  factory GetDatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress(
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      timeToRetire: pulumi.Input.fromValue(map['timeToRetire'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
