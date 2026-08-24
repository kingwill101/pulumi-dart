// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApiTokenConditionRequestIp {
  /// List of IPv4/IPv6 CIDR addresses.
  final pulumi.Input<List<String>> ins;
  /// List of IPv4/IPv6 CIDR addresses.
  final pulumi.Input<List<String>> notIns;

  /// Creates a new [GetApiTokenConditionRequestIp].
  /// [ins] List of IPv4/IPv6 CIDR addresses.
  /// [notIns] List of IPv4/IPv6 CIDR addresses.
  const GetApiTokenConditionRequestIp({
    required this.ins,
    required this.notIns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ins': ins,
      'notIns': notIns,
    };
  }

  factory GetApiTokenConditionRequestIp.fromMap(Map<String, dynamic> map) {
    return GetApiTokenConditionRequestIp(
      ins: pulumi.Input.fromValue((map['ins'] as List).cast<String>()),
      notIns: pulumi.Input.fromValue((map['notIns'] as List).cast<String>()),
    );
  }
}
