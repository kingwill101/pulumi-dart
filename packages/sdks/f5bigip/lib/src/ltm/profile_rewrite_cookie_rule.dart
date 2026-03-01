// ignore_for_file: unused_element, unnecessary_cast


class ProfileRewriteCookieRule {
  final String clientDomain;
  final String clientPath;
  /// Name of the cookie rewrite rule.
  final String ruleName;
  final String serverDomain;
  final String serverPath;

  /// Creates a new [ProfileRewriteCookieRule].
  /// [clientDomain] Required.
  /// [clientPath] Required.
  /// [ruleName] Name of the cookie rewrite rule.
  /// [serverDomain] Required.
  /// [serverPath] Required.
  ProfileRewriteCookieRule({
    required this.clientDomain,
    required this.clientPath,
    required this.ruleName,
    required this.serverDomain,
    required this.serverPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientDomain': clientDomain,
      'clientPath': clientPath,
      'ruleName': ruleName,
      'serverDomain': serverDomain,
      'serverPath': serverPath,
    };
  }

  factory ProfileRewriteCookieRule.fromMap(Map<String, dynamic> map) {
    return ProfileRewriteCookieRule(
      clientDomain: map['clientDomain'] as String,
      clientPath: map['clientPath'] as String,
      ruleName: map['ruleName'] as String,
      serverDomain: map['serverDomain'] as String,
      serverPath: map['serverPath'] as String,
    );
  }
}

