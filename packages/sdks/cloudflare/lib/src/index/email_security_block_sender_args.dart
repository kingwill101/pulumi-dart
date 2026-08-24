// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_email_security_block_sender_email_security_block_sender_args_doc}
/// The set of arguments for EmailSecurityBlockSender.
/// {@endtemplate}
/// {@macro pulumi_index_email_security_block_sender_email_security_block_sender_args_doc}
class EmailSecurityBlockSenderArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  final pulumi.Input<String?>? comments;
  final pulumi.Input<bool> isRegex;
  /// The pattern value to match against. Format depends on `patternType`:
  /// - EMAIL: a valid email address, e.g. `user@example.com`
  /// - DOMAIN: a valid domain name, e.g. `example.com`
  /// - IP: a plain IPv4 address (e.g. `1.2.3.4`) or an IPv4 CIDR block (e.g. `1.2.3.0/24`). Only globally reachable addresses are accepted; private, loopback, link-local, and unspecified addresses are rejected.
  final pulumi.Input<String> pattern;
  /// Type of pattern matching.
  /// - EMAIL: matches a full email address (e.g. `user@example.com`)
  /// - DOMAIN: matches a domain name (e.g. `example.com`)
  /// - IP: matches a plain IPv4 address (e.g. `1.2.3.4`) or an IPv4 CIDR block (e.g. `1.2.3.0/24`). Only globally reachable addresses are accepted.
  /// - UNKNOWN: deprecated, cannot be used when creating or updating policies, but may be returned for existing entries.
  /// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
  final pulumi.Input<String> patternType;

  /// Creates a new [EmailSecurityBlockSenderArgs].
  /// [accountId] Identifier.
  /// [comments] Optional.
  /// [isRegex] Required.
  /// [pattern] The pattern value to match against. Format depends on `patternType`:
  /// [patternType] Type of pattern matching.
  const EmailSecurityBlockSenderArgs({
    required this.accountId,
    this.comments,
    required this.isRegex,
    required this.pattern,
    required this.patternType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'comments': ?comments,
      'isRegex': isRegex,
      'pattern': pattern,
      'patternType': patternType,
    };
  }

  factory EmailSecurityBlockSenderArgs.fromMap(Map<String, dynamic> map) {
    return EmailSecurityBlockSenderArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isRegex: pulumi.Input.fromValue(map['isRegex'] as bool),
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
      patternType: pulumi.Input.fromValue(map['patternType'] as String),
    );
  }
}
