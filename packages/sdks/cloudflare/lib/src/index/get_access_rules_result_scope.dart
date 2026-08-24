// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessRulesResultScope {
  /// The contact email address of the user.
  final pulumi.Input<String> email;
  /// Defines an identifier.
  final pulumi.Input<String> id;
  /// Defines the scope of the rule.
  /// Available values: "user", "organization".
  final pulumi.Input<String> type;

  /// Creates a new [GetAccessRulesResultScope].
  /// [email] The contact email address of the user.
  /// [id] Defines an identifier.
  /// [type] Defines the scope of the rule.
  const GetAccessRulesResultScope({
    required this.email,
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'id': id,
      'type': type,
    };
  }

  factory GetAccessRulesResultScope.fromMap(Map<String, dynamic> map) {
    return GetAccessRulesResultScope(
      email: pulumi.Input.fromValue(map['email'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
