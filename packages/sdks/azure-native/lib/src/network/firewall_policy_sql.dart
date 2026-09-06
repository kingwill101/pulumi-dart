// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL Settings in Firewall Policy.
class FirewallPolicySQL {
  /// A flag to indicate if SQL Redirect traffic filtering is enabled. Turning on the flag requires no rule using port 11000-11999.
  final pulumi.Input<bool?>? allowSqlRedirect;

  /// Creates a new [FirewallPolicySQL].
  /// [allowSqlRedirect] A flag to indicate if SQL Redirect traffic filtering is enabled. Turning on the flag requires no rule using port 11000-11999.
  const FirewallPolicySQL({
    this.allowSqlRedirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSqlRedirect': ?allowSqlRedirect,
    };
  }

  factory FirewallPolicySQL.fromMap(Map<String, dynamic> map) {
    return FirewallPolicySQL(
      allowSqlRedirect: (() { final guardedValue = map['allowSqlRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
