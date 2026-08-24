// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTokenValidationRulesListResultSelectorInclude {
  /// Included hostnames.
  final pulumi.Input<List<String>> hosts;

  /// Creates a new [GetTokenValidationRulesListResultSelectorInclude].
  /// [hosts] Included hostnames.
  const GetTokenValidationRulesListResultSelectorInclude({
    required this.hosts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': hosts,
    };
  }

  factory GetTokenValidationRulesListResultSelectorInclude.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationRulesListResultSelectorInclude(
      hosts: pulumi.Input.fromValue((map['hosts'] as List).cast<String>()),
    );
  }
}
