// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailSecurityAllowPoliciesResult {
  final pulumi.Input<String> comments;
  final pulumi.Input<String> createdAt;
  /// Allow policy identifier.
  final pulumi.Input<String> id;
  /// Exempts messages from this sender from Spam, Spoof and Bulk dispositions only; Malicious and Suspicious dispositions still apply.
  final pulumi.Input<bool> isAcceptableSender;
  /// Bypasses all detections for messages to this recipient.
  final pulumi.Input<bool> isExemptRecipient;
  /// Deprecated as of July 1, 2025. Use `isExemptRecipient` instead. End of life: July 1, 2026.
  final pulumi.Input<bool> isRecipient;
  final pulumi.Input<bool> isRegex;
  /// Deprecated as of July 1, 2025. Use `isTrustedSender` instead. End of life: July 1, 2026.
  final pulumi.Input<bool> isSender;
  /// Deprecated as of July 1, 2025. Use `isAcceptableSender` instead. End of life: July 1, 2026.
  final pulumi.Input<bool> isSpoof;
  /// Bypasses all detections and link following for messages from this sender.
  final pulumi.Input<bool> isTrustedSender;
  /// Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  final pulumi.Input<String> lastModified;
  final pulumi.Input<String> modifiedAt;
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

  /// Creates a new [GetEmailSecurityAllowPoliciesResult].
  /// [comments] Required.
  /// [createdAt] Required.
  /// [id] Allow policy identifier.
  /// [isAcceptableSender] Exempts messages from this sender from Spam, Spoof and Bulk dispositions only; Malicious and Suspicious dispositions still apply.
  /// [isExemptRecipient] Bypasses all detections for messages to this recipient.
  /// [isRecipient] Deprecated as of July 1, 2025. Use `isExemptRecipient` instead. End of life: July 1, 2026.
  /// [isRegex] Required.
  /// [isSender] Deprecated as of July 1, 2025. Use `isTrustedSender` instead. End of life: July 1, 2026.
  /// [isSpoof] Deprecated as of July 1, 2025. Use `isAcceptableSender` instead. End of life: July 1, 2026.
  /// [isTrustedSender] Bypasses all detections and link following for messages from this sender.
  /// [lastModified] Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  /// [modifiedAt] Required.
  /// [pattern] The pattern value to match. The format depends on `patternType`: a valid email address for EMAIL (e.g. `user@example.com`), a valid domain name for DOMAIN (e.g. `example.com`), or a plain IPv4 or IPv6 address or CIDR block for IP (e.g. `1.2.3.4`, `1.2.3.0/24`, `2606:4700:4700::1111`, or `2606:4700:4700::/48`); the API rejects private or unique-local, loopback, link-local, unspecified, and IPv4 broadcast addresses, including their IPv4-mapped IPv6 equivalents.
  /// [patternType] Type of pattern matching.
  /// [verifySender] Enforce DMARC, SPF or DKIM authentication. When on, Email Security only honors policies that pass authentication.
  const GetEmailSecurityAllowPoliciesResult({
    required this.comments,
    required this.createdAt,
    required this.id,
    required this.isAcceptableSender,
    required this.isExemptRecipient,
    required this.isRecipient,
    required this.isRegex,
    required this.isSender,
    required this.isSpoof,
    required this.isTrustedSender,
    required this.lastModified,
    required this.modifiedAt,
    required this.pattern,
    required this.patternType,
    required this.verifySender,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comments': comments,
      'createdAt': createdAt,
      'id': id,
      'isAcceptableSender': isAcceptableSender,
      'isExemptRecipient': isExemptRecipient,
      'isRecipient': isRecipient,
      'isRegex': isRegex,
      'isSender': isSender,
      'isSpoof': isSpoof,
      'isTrustedSender': isTrustedSender,
      'lastModified': lastModified,
      'modifiedAt': modifiedAt,
      'pattern': pattern,
      'patternType': patternType,
      'verifySender': verifySender,
    };
  }

  factory GetEmailSecurityAllowPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityAllowPoliciesResult(
      comments: pulumi.Input.fromValue(map['comments'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isAcceptableSender: pulumi.Input.fromValue(map['isAcceptableSender'] as bool),
      isExemptRecipient: pulumi.Input.fromValue(map['isExemptRecipient'] as bool),
      isRecipient: pulumi.Input.fromValue(map['isRecipient'] as bool),
      isRegex: pulumi.Input.fromValue(map['isRegex'] as bool),
      isSender: pulumi.Input.fromValue(map['isSender'] as bool),
      isSpoof: pulumi.Input.fromValue(map['isSpoof'] as bool),
      isTrustedSender: pulumi.Input.fromValue(map['isTrustedSender'] as bool),
      lastModified: pulumi.Input.fromValue(map['lastModified'] as String),
      modifiedAt: pulumi.Input.fromValue(map['modifiedAt'] as String),
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
      patternType: pulumi.Input.fromValue(map['patternType'] as String),
      verifySender: pulumi.Input.fromValue(map['verifySender'] as bool),
    );
  }
}
