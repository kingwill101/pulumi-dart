// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyConnectionRulesSsh {
  /// Enables using Identity Provider email alias as SSH username.
  final pulumi.Input<bool?>? allowEmailAlias;
  /// Contains the Unix usernames that may be used when connecting over SSH.
  final pulumi.Input<List<String>> usernames;

  /// Creates a new [ZeroTrustAccessApplicationPolicyConnectionRulesSsh].
  /// [allowEmailAlias] Enables using Identity Provider email alias as SSH username.
  /// [usernames] Contains the Unix usernames that may be used when connecting over SSH.
  const ZeroTrustAccessApplicationPolicyConnectionRulesSsh({
    this.allowEmailAlias,
    required this.usernames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowEmailAlias': ?allowEmailAlias,
      'usernames': usernames,
    };
  }

  factory ZeroTrustAccessApplicationPolicyConnectionRulesSsh.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyConnectionRulesSsh(
      allowEmailAlias: (() { final guardedValue = map['allowEmailAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      usernames: pulumi.Input.fromValue((map['usernames'] as List).cast<String>()),
    );
  }
}
