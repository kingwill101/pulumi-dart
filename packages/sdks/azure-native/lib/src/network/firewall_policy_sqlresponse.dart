// ignore_for_file: unused_element, unnecessary_cast


/// SQL Settings in Firewall Policy.
class FirewallPolicySQLResponse {
  /// A flag to indicate if SQL Redirect traffic filtering is enabled. Turning on the flag requires no rule using port 11000-11999.
  final bool? allowSqlRedirect;

  /// Creates a new [FirewallPolicySQLResponse].
  /// [allowSqlRedirect] A flag to indicate if SQL Redirect traffic filtering is enabled. Turning on the flag requires no rule using port 11000-11999.
  FirewallPolicySQLResponse({
    this.allowSqlRedirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSqlRedirect': ?allowSqlRedirect,
    };
  }

  factory FirewallPolicySQLResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicySQLResponse(
      allowSqlRedirect: map['allowSqlRedirect'] == null ? null : map['allowSqlRedirect'] as bool,
    );
  }
}

