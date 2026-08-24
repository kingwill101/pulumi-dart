// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountTokenConditionRequestIp {
  /// List of IPv4/IPv6 CIDR addresses.
  final pulumi.Input<List<String>> ins;
  /// List of IPv4/IPv6 CIDR addresses.
  final pulumi.Input<List<String>> notIns;

  /// Creates a new [GetAccountTokenConditionRequestIp].
  /// [ins] List of IPv4/IPv6 CIDR addresses.
  /// [notIns] List of IPv4/IPv6 CIDR addresses.
  const GetAccountTokenConditionRequestIp({
    required this.ins,
    required this.notIns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ins': ins,
      'notIns': notIns,
    };
  }

  factory GetAccountTokenConditionRequestIp.fromMap(Map<String, dynamic> map) {
    return GetAccountTokenConditionRequestIp(
      ins: pulumi.Input.fromValue((map['ins'] as List).cast<String>()),
      notIns: pulumi.Input.fromValue((map['notIns'] as List).cast<String>()),
    );
  }
}
