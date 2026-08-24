// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyConnectionRulesSsh {
  /// Enables using Identity Provider email alias as SSH username.
  final pulumi.Input<bool> allowEmailAlias;
  /// Contains the Unix usernames that may be used when connecting over SSH.
  final pulumi.Input<List<String>> usernames;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyConnectionRulesSsh].
  /// [allowEmailAlias] Enables using Identity Provider email alias as SSH username.
  /// [usernames] Contains the Unix usernames that may be used when connecting over SSH.
  const GetZeroTrustAccessApplicationPolicyConnectionRulesSsh({
    required this.allowEmailAlias,
    required this.usernames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowEmailAlias': allowEmailAlias,
      'usernames': usernames,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyConnectionRulesSsh.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyConnectionRulesSsh(
      allowEmailAlias: pulumi.Input.fromValue(map['allowEmailAlias'] as bool),
      usernames: pulumi.Input.fromValue((map['usernames'] as List).cast<String>()),
    );
  }
}
