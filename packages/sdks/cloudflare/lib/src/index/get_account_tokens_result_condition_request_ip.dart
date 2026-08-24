// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountTokensResultConditionRequestIp {
  /// List of IPv4/IPv6 CIDR addresses.
  final pulumi.Input<List<String>> ins;
  /// List of IPv4/IPv6 CIDR addresses.
  final pulumi.Input<List<String>> notIns;

  /// Creates a new [GetAccountTokensResultConditionRequestIp].
  /// [ins] List of IPv4/IPv6 CIDR addresses.
  /// [notIns] List of IPv4/IPv6 CIDR addresses.
  const GetAccountTokensResultConditionRequestIp({
    required this.ins,
    required this.notIns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ins': ins,
      'notIns': notIns,
    };
  }

  factory GetAccountTokensResultConditionRequestIp.fromMap(Map<String, dynamic> map) {
    return GetAccountTokensResultConditionRequestIp(
      ins: pulumi.Input.fromValue((map['ins'] as List).cast<String>()),
      notIns: pulumi.Input.fromValue((map['notIns'] as List).cast<String>()),
    );
  }
}
