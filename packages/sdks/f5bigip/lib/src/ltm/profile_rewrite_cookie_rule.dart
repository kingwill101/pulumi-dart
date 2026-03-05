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
      clientDomain: pulumi.Input.fromValue(map['clientDomain'] as String),
      clientPath: pulumi.Input.fromValue(map['clientPath'] as String),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      serverDomain: pulumi.Input.fromValue(map['serverDomain'] as String),
      serverPath: pulumi.Input.fromValue(map['serverPath'] as String),
    );
  }
}

