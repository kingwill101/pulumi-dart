// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyConnectionRulesSsh {
  /// Enables using Identity Provider email alias as SSH username.
  final pulumi.Input<bool?>? allowEmailAlias;
  /// Contains the Unix usernames that may be used when connecting over SSH.
  final pulumi.Input<List<String>> usernames;

  /// Creates a new [AccessApplicationPolicyConnectionRulesSsh].
  /// [allowEmailAlias] Enables using Identity Provider email alias as SSH username.
  /// [usernames] Contains the Unix usernames that may be used when connecting over SSH.
  const AccessApplicationPolicyConnectionRulesSsh({
    this.allowEmailAlias,
    required this.usernames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowEmailAlias': ?allowEmailAlias,
      'usernames': usernames,
    };
  }

  factory AccessApplicationPolicyConnectionRulesSsh.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyConnectionRulesSsh(
      allowEmailAlias: (() { final guardedValue = map['allowEmailAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      usernames: pulumi.Input.fromValue((map['usernames'] as List).cast<String>()),
    );
  }
}
