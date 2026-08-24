// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTokenValidationRulesSelectorInclude {
  /// Included hostnames.
  final pulumi.Input<List<String>> hosts;

  /// Creates a new [GetTokenValidationRulesSelectorInclude].
  /// [hosts] Included hostnames.
  const GetTokenValidationRulesSelectorInclude({
    required this.hosts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': hosts,
    };
  }

  factory GetTokenValidationRulesSelectorInclude.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationRulesSelectorInclude(
      hosts: pulumi.Input.fromValue((map['hosts'] as List).cast<String>()),
    );
  }
}
