// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceIpAddress {
  /// The IPv4 address assigned.
  final pulumi.Input<String>? ipAddress;
  /// The time this IP address will be retired, in RFC
  /// 3339 format.
  final pulumi.Input<String>? timeToRetire;
  /// The type of this IP address.
  final pulumi.Input<String>? type;

  /// Creates a new [DatabaseInstanceIpAddress].
  /// [ipAddress] The IPv4 address assigned.
  /// [timeToRetire] The time this IP address will be retired, in RFC
  /// [type] The type of this IP address.
  DatabaseInstanceIpAddress({
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

  factory DatabaseInstanceIpAddress.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceIpAddress(
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeToRetire: (() { final guardedValue = map['timeToRetire']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

