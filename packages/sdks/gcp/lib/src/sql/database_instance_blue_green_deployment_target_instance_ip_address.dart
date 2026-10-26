// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress {
  /// The IPv4 address assigned to the target instance.
  final pulumi.Input<String?>? ipAddress;
  /// The time this IP address will be retired, in RFC 3339 format.
  final pulumi.Input<String?>? timeToRetire;
  /// The type of this IP address (`PRIMARY`, `OUTGOING`, or `PRIVATE`).
  final pulumi.Input<String?>? type;

  /// Creates a new [DatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress].
  /// [ipAddress] The IPv4 address assigned to the target instance.
  /// [timeToRetire] The time this IP address will be retired, in RFC 3339 format.
  /// [type] The type of this IP address (`PRIMARY`, `OUTGOING`, or `PRIVATE`).
  const DatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress({
    this.ipAddress,
    this.timeToRetire,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'timeToRetire': ?timeToRetire,
      'type': ?type,
    };
  }

  factory DatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress(
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeToRetire: (() { final guardedValue = map['timeToRetire']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
