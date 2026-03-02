// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProfileRewriteCookieRule {
  final pulumi.Input<String> clientDomain;
  final pulumi.Input<String> clientPath;
  /// Name of the cookie rewrite rule.
  final pulumi.Input<String> ruleName;
  final pulumi.Input<String> serverDomain;
  final pulumi.Input<String> serverPath;

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
      clientDomain: (map['clientDomain'] as String).input(),
      clientPath: (map['clientPath'] as String).input(),
      ruleName: (map['ruleName'] as String).input(),
      serverDomain: (map['serverDomain'] as String).input(),
      serverPath: (map['serverPath'] as String).input(),
    );
  }
}

