// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A network authorization rule that filters traffic based on IP address.
class IpRule {
  /// IP mask.
  final pulumi.Input<String> ipMask;
  /// List of access rights.
  final pulumi.Input<List<String>> rights;

  /// Creates a new [IpRule].
  /// [ipMask] IP mask.
  /// [rights] List of access rights.
  const IpRule({
    required this.ipMask,
    required this.rights,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipMask': ipMask,
      'rights': rights,
    };
  }

  factory IpRule.fromMap(Map<String, dynamic> map) {
    return IpRule(
      ipMask: pulumi.Input.fromValue(map['ipMask'] as String),
      rights: pulumi.Input.fromValue((map['rights'] as List).cast<String>()),
    );
  }
}
