// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiTokenConditionRequestIp {
  /// List of IPv4/IPv6 CIDR addresses.
  final pulumi.Input<List<String>?>? ins;
  /// List of IPv4/IPv6 CIDR addresses.
  final pulumi.Input<List<String>?>? notIns;

  /// Creates a new [ApiTokenConditionRequestIp].
  /// [ins] List of IPv4/IPv6 CIDR addresses.
  /// [notIns] List of IPv4/IPv6 CIDR addresses.
  const ApiTokenConditionRequestIp({
    this.ins,
    this.notIns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ins': ?ins,
      'notIns': ?notIns,
    };
  }

  factory ApiTokenConditionRequestIp.fromMap(Map<String, dynamic> map) {
    return ApiTokenConditionRequestIp(
      ins: (() { final guardedValue = map['ins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notIns: (() { final guardedValue = map['notIns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
