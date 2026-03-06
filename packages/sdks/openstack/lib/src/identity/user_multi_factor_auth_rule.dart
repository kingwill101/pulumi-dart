// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserMultiFactorAuthRule {
  /// A list of authentication plugins that the user must
  /// authenticate with.
  final pulumi.Input<List<String>> rules;

  /// Creates a new [UserMultiFactorAuthRule].
  /// [rules] A list of authentication plugins that the user must
  const UserMultiFactorAuthRule({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': rules,
    };
  }

  factory UserMultiFactorAuthRule.fromMap(Map<String, dynamic> map) {
    return UserMultiFactorAuthRule(
      rules: pulumi.Input.fromValue((map['rules'] as List).cast<String>()),
    );
  }
}

