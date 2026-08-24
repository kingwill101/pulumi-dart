// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TokenValidationRulesSelectorInclude {
  /// Included hostnames.
  final pulumi.Input<List<String>?>? hosts;

  /// Creates a new [TokenValidationRulesSelectorInclude].
  /// [hosts] Included hostnames.
  const TokenValidationRulesSelectorInclude({
    this.hosts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': ?hosts,
    };
  }

  factory TokenValidationRulesSelectorInclude.fromMap(Map<String, dynamic> map) {
    return TokenValidationRulesSelectorInclude(
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
