// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_email_security_allow_policy_email_security_allow_policy_args_doc}
/// The set of arguments for EmailSecurityAllowPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_email_security_allow_policy_email_security_allow_policy_args_doc}
class EmailSecurityAllowPolicyArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  final pulumi.Input<String?>? comments;
  /// Exempts messages from this sender from Spam, Spoof and Bulk dispositions only; Malicious and Suspicious dispositions still apply.
  final pulumi.Input<bool> isAcceptableSender;
  /// Bypasses all detections for messages to this recipient.
  final pulumi.Input<bool> isExemptRecipient;
  /// Deprecated as of July 1, 2025. Use `isExemptRecipient` instead. End of life: July 1, 2026.
  final pulumi.Input<bool?>? isRecipient;
  final pulumi.Input<bool> isRegex;
  /// Deprecated as of July 1, 2025. Use `isTrustedSender` instead. End of life: July 1, 2026.
  final pulumi.Input<bool?>? isSender;
  /// Deprecated as of July 1, 2025. Use `isAcceptableSender` instead. End of life: July 1, 2026.
  final pulumi.Input<bool?>? isSpoof;
  /// Bypasses all detections and link following for messages from this sender.
  final pulumi.Input<bool> isTrustedSender;
  /// The pattern value to match. The format depends on `patternType`: a valid email address for EMAIL (e.g. `user@example.com`), a valid domain name for DOMAIN (e.g. `example.com`), or a plain IPv4 or IPv6 address or CIDR block for IP (e.g. `1.2.3.4`, `1.2.3.0/24`, `2606:4700:4700::1111`, or `2606:4700:4700::/48`); the API rejects private or unique-local, loopback, link-local, unspecified, and IPv4 broadcast addresses, including their IPv4-mapped IPv6 equivalents.
  final pulumi.Input<String> pattern;
  /// Type of pattern matching.
  /// - EMAIL: matches a full email address (e.g. `user@example.com`)
  /// - DOMAIN: matches a domain name (e.g. `example.com`)
  /// - IP: matches a plain IPv4 or IPv6 address (e.g. `1.2.3.4` or `2606:4700:4700::1111`) or CIDR block (e.g. `1.2.3.0/24` or `2606:4700:4700::/48`). The API rejects private or unique-local, loopback, link-local, unspecified, and IPv4 broadcast addresses, including their IPv4-mapped IPv6 equivalents.
  /// - UNKNOWN: deprecated; you cannot use this when creating or updating policies, but it may appear on existing entries.
  /// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
  final pulumi.Input<String> patternType;
  /// Enforce DMARC, SPF or DKIM authentication. When on, Email Security only honors policies that pass authentication.
  final pulumi.Input<bool> verifySender;

  /// Creates a new [EmailSecurityAllowPolicyArgs].
  /// [accountId] Identifier.
  /// [comments] Optional.
  /// [isAcceptableSender] Exempts messages from this sender from Spam, Spoof and Bulk dispositions only; Malicious and Suspicious dispositions still apply.
  /// [isExemptRecipient] Bypasses all detections for messages to this recipient.
  /// [isRecipient] Deprecated as of July 1, 2025. Use `isExemptRecipient` instead. End of life: July 1, 2026.
  /// [isRegex] Required.
  /// [isSender] Deprecated as of July 1, 2025. Use `isTrustedSender` instead. End of life: July 1, 2026.
  /// [isSpoof] Deprecated as of July 1, 2025. Use `isAcceptableSender` instead. End of life: July 1, 2026.
  /// [isTrustedSender] Bypasses all detections and link following for messages from this sender.
  /// [pattern] The pattern value to match. The format depends on `patternType`: a valid email address for EMAIL (e.g. `user@example.com`), a valid domain name for DOMAIN (e.g. `example.com`), or a plain IPv4 or IPv6 address or CIDR block for IP (e.g. `1.2.3.4`, `1.2.3.0/24`, `2606:4700:4700::1111`, or `2606:4700:4700::/48`); the API rejects private or unique-local, loopback, link-local, unspecified, and IPv4 broadcast addresses, including their IPv4-mapped IPv6 equivalents.
  /// [patternType] Type of pattern matching.
  /// [verifySender] Enforce DMARC, SPF or DKIM authentication. When on, Email Security only honors policies that pass authentication.
  const EmailSecurityAllowPolicyArgs({
    required this.accountId,
    this.comments,
    required this.isAcceptableSender,
    required this.isExemptRecipient,
    this.isRecipient,
    required this.isRegex,
    this.isSender,
    this.isSpoof,
    required this.isTrustedSender,
    required this.pattern,
    required this.patternType,
    required this.verifySender,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'comments': ?comments,
      'isAcceptableSender': isAcceptableSender,
      'isExemptRecipient': isExemptRecipient,
      'isRecipient': ?isRecipient,
      'isRegex': isRegex,
      'isSender': ?isSender,
      'isSpoof': ?isSpoof,
      'isTrustedSender': isTrustedSender,
      'pattern': pattern,
      'patternType': patternType,
      'verifySender': verifySender,
    };
  }

  factory EmailSecurityAllowPolicyArgs.fromMap(Map<String, dynamic> map) {
    return EmailSecurityAllowPolicyArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isAcceptableSender: pulumi.Input.fromValue(map['isAcceptableSender'] as bool),
      isExemptRecipient: pulumi.Input.fromValue(map['isExemptRecipient'] as bool),
      isRecipient: (() { final guardedValue = map['isRecipient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRegex: pulumi.Input.fromValue(map['isRegex'] as bool),
      isSender: (() { final guardedValue = map['isSender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSpoof: (() { final guardedValue = map['isSpoof']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isTrustedSender: pulumi.Input.fromValue(map['isTrustedSender'] as bool),
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
      patternType: pulumi.Input.fromValue(map['patternType'] as String),
      verifySender: pulumi.Input.fromValue(map['verifySender'] as bool),
    );
  }
}
