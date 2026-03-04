// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A network authorization rule that filters traffic based on IP address.
class IpRuleResponse {
  /// IP mask.
  final pulumi.Input<String> ipMask;

  /// List of access rights.
  final pulumi.Input<List<String>> rights;

  /// Creates a new [IpRuleResponse].
  /// [ipMask] IP mask.
  /// [rights] List of access rights.
  IpRuleResponse({required this.ipMask, required this.rights});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipMask': ipMask, 'rights': rights};
  }

  factory IpRuleResponse.fromMap(Map<String, dynamic> map) {
    return IpRuleResponse(
      ipMask: pulumi.Input.fromValue(map['ipMask'] as String),
      rights: pulumi.Input.fromValue((map['rights'] as List).cast<String>()),
    );
  }
}
