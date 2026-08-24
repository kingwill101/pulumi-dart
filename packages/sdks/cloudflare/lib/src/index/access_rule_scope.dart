// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessRuleScope {
  /// The contact email address of the user.
  final pulumi.Input<String?>? email;
  /// Defines an identifier.
  final pulumi.Input<String?>? id;
  /// Defines the scope of the rule.
  /// Available values: "user", "organization".
  final pulumi.Input<String?>? type;

  /// Creates a new [AccessRuleScope].
  /// [email] The contact email address of the user.
  /// [id] Defines an identifier.
  /// [type] Defines the scope of the rule.
  const AccessRuleScope({
    this.email,
    this.id,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'id': ?id,
      'type': ?type,
    };
  }

  factory AccessRuleScope.fromMap(Map<String, dynamic> map) {
    return AccessRuleScope(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
