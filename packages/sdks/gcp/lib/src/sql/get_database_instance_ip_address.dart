// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceIpAddress {
  final pulumi.Input<String> ipAddress;
  final pulumi.Input<String> timeToRetire;
  final pulumi.Input<String> type;

  /// Creates a new [GetDatabaseInstanceIpAddress].
  /// [ipAddress] Required.
  /// [timeToRetire] Required.
  /// [type] Required.
  const GetDatabaseInstanceIpAddress({
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

  factory GetDatabaseInstanceIpAddress.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceIpAddress(
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      timeToRetire: pulumi.Input.fromValue(map['timeToRetire'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

