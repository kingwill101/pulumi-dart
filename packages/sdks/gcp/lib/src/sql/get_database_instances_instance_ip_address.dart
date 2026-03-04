// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceIpAddress {
  final pulumi.Input<String> ipAddress;
  final pulumi.Input<String> timeToRetire;
  final pulumi.Input<String> type;

  /// Creates a new [GetDatabaseInstancesInstanceIpAddress].
  /// [ipAddress] Required.
  /// [timeToRetire] Required.
  /// [type] Required.
  GetDatabaseInstancesInstanceIpAddress({
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

  factory GetDatabaseInstancesInstanceIpAddress.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstancesInstanceIpAddress(
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      timeToRetire: pulumi.Input.fromValue(map['timeToRetire'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
