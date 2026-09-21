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
  /// The pattern value to match. The format depends on `patternType`: a valid email address for EMAIL (e.g. `user@example.com`), a valid domain name for DOMAIN (e.g. `example.com`), or a plain IPv4 or IPv6 address or CIDR block for IP (e.g. `1.2.3.4`, `1.2.3.0/24`, `2606:4700:4700::1111`, or `2606:4700:4700::/48`); the API rejects private or unique-local, loopback, link-local, unspecified, and IPv4 broadcast addresses, including their IPv4-mapped IPv6 equivalents.
  final pulumi.Input<String> pattern;
  /// Type of pattern matching.
  /// - EMAIL: matches a full email address (e.g. `user@example.com`)
  /// - DOMAIN: matches a domain name (e.g. `example.com`)
  /// - IP: matches a plain IPv4 or IPv6 address (e.g. `1.2.3.4` or `2606:4700:4700::1111`) or CIDR block (e.g. `1.2.3.0/24` or `2606:4700:4700::/48`). The API rejects private or unique-local, loopback, link-local, unspecified, and IPv4 broadcast addresses, including their IPv4-mapped IPv6 equivalents.
  /// - UNKNOWN: deprecated; you cannot use this when creating or updating policies, but it may appear on existing entries.
  /// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
  final pulumi.Input<String> patternType;

  /// Creates a new [EmailSecurityBlockSenderArgs].
  /// [accountId] Identifier.
  /// [comments] Optional.
  /// [isRegex] Required.
  /// [pattern] The pattern value to match. The format depends on `patternType`: a valid email address for EMAIL (e.g. `user@example.com`), a valid domain name for DOMAIN (e.g. `example.com`), or a plain IPv4 or IPv6 address or CIDR block for IP (e.g. `1.2.3.4`, `1.2.3.0/24`, `2606:4700:4700::1111`, or `2606:4700:4700::/48`); the API rejects private or unique-local, loopback, link-local, unspecified, and IPv4 broadcast addresses, including their IPv4-mapped IPv6 equivalents.
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
