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
  GetDatabaseInstanceIpAddress({
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
      ipAddress: (map['ipAddress'] as String).input(),
      timeToRetire: (map['timeToRetire'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

