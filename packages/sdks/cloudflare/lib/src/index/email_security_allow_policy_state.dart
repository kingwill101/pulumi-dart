// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailSecurityAllowPolicy resources.
class EmailSecurityAllowPolicyState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? comments;
  final pulumi.Input<String?>? createdAt;
  /// Exempts messages from this sender from Spam, Spoof and Bulk dispositions only; Malicious and Suspicious dispositions still apply.
  final pulumi.Input<bool?>? isAcceptableSender;
  /// Bypasses all detections for messages to this recipient.
  final pulumi.Input<bool?>? isExemptRecipient;
  /// Deprecated as of July 1, 2025. Use `isExemptRecipient` instead. End of life: July 1, 2026.
  final pulumi.Input<bool?>? isRecipient;
  final pulumi.Input<bool?>? isRegex;
  /// Deprecated as of July 1, 2025. Use `isTrustedSender` instead. End of life: July 1, 2026.
  final pulumi.Input<bool?>? isSender;
  /// Deprecated as of July 1, 2025. Use `isAcceptableSender` instead. End of life: July 1, 2026.
  final pulumi.Input<bool?>? isSpoof;
  /// Bypasses all detections and link following for messages from this sender.
  final pulumi.Input<bool?>? isTrustedSender;
  /// Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  final pulumi.Input<String?>? lastModified;
  final pulumi.Input<String?>? modifiedAt;
  /// The pattern value to match. The format depends on `patternType`: a valid email address for EMAIL (e.g. `user@example.com`), a valid domain name for DOMAIN (e.g. `example.com`), or a plain IPv4 or IPv6 address or CIDR block for IP (e.g. `1.2.3.4`, `1.2.3.0/24`, `2606:4700:4700::1111`, or `2606:4700:4700::/48`); the API rejects private or unique-local, loopback, link-local, unspecified, and IPv4 broadcast addresses, including their IPv4-mapped IPv6 equivalents.
  final pulumi.Input<String?>? pattern;
  /// Type of pattern matching.
  /// - EMAIL: matches a full email address (e.g. `user@example.com`)
  /// - DOMAIN: matches a domain name (e.g. `example.com`)
  /// - IP: matches a plain IPv4 or IPv6 address (e.g. `1.2.3.4` or `2606:4700:4700::1111`) or CIDR block (e.g. `1.2.3.0/24` or `2606:4700:4700::/48`). The API rejects private or unique-local, loopback, link-local, unspecified, and IPv4 broadcast addresses, including their IPv4-mapped IPv6 equivalents.
  /// - UNKNOWN: deprecated; you cannot use this when creating or updating policies, but it may appear on existing entries.
  /// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
  final pulumi.Input<String?>? patternType;
  /// Enforce DMARC, SPF or DKIM authentication. When on, Email Security only honors policies that pass authentication.
  final pulumi.Input<bool?>? verifySender;

  /// Creates a new [EmailSecurityAllowPolicyState].
  /// [accountId] Identifier.
  /// [comments] Optional.
  /// [createdAt] Optional.
  /// [isAcceptableSender] Exempts messages from this sender from Spam, Spoof and Bulk dispositions only; Malicious and Suspicious dispositions still apply.
  /// [isExemptRecipient] Bypasses all detections for messages to this recipient.
  /// [isRecipient] Deprecated as of July 1, 2025. Use `isExemptRecipient` instead. End of life: July 1, 2026.
  /// [isRegex] Optional.
  /// [isSender] Deprecated as of July 1, 2025. Use `isTrustedSender` instead. End of life: July 1, 2026.
  /// [isSpoof] Deprecated as of July 1, 2025. Use `isAcceptableSender` instead. End of life: July 1, 2026.
  /// [isTrustedSender] Bypasses all detections and link following for messages from this sender.
  /// [lastModified] Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  /// [modifiedAt] Optional.
  /// [pattern] The pattern value to match. The format depends on `patternType`: a valid email address for EMAIL (e.g. `user@example.com`), a valid domain name for DOMAIN (e.g. `example.com`), or a plain IPv4 or IPv6 address or CIDR block for IP (e.g. `1.2.3.4`, `1.2.3.0/24`, `2606:4700:4700::1111`, or `2606:4700:4700::/48`); the API rejects private or unique-local, loopback, link-local, unspecified, and IPv4 broadcast addresses, including their IPv4-mapped IPv6 equivalents.
  /// [patternType] Type of pattern matching.
  /// [verifySender] Enforce DMARC, SPF or DKIM authentication. When on, Email Security only honors policies that pass authentication.
  const EmailSecurityAllowPolicyState({
    this.accountId,
    this.comments,
    this.createdAt,
    this.isAcceptableSender,
    this.isExemptRecipient,
    this.isRecipient,
    this.isRegex,
    this.isSender,
    this.isSpoof,
    this.isTrustedSender,
    this.lastModified,
    this.modifiedAt,
    this.pattern,
    this.patternType,
    this.verifySender,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'comments': ?comments,
      'createdAt': ?createdAt,
      'isAcceptableSender': ?isAcceptableSender,
      'isExemptRecipient': ?isExemptRecipient,
      'isRecipient': ?isRecipient,
      'isRegex': ?isRegex,
      'isSender': ?isSender,
      'isSpoof': ?isSpoof,
      'isTrustedSender': ?isTrustedSender,
      'lastModified': ?lastModified,
      'modifiedAt': ?modifiedAt,
      'pattern': ?pattern,
      'patternType': ?patternType,
      'verifySender': ?verifySender,
    };
  }

  factory EmailSecurityAllowPolicyState.fromMap(Map<String, dynamic> map) {
    return EmailSecurityAllowPolicyState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isAcceptableSender: (() { final guardedValue = map['isAcceptableSender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isExemptRecipient: (() { final guardedValue = map['isExemptRecipient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRecipient: (() { final guardedValue = map['isRecipient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRegex: (() { final guardedValue = map['isRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSender: (() { final guardedValue = map['isSender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSpoof: (() { final guardedValue = map['isSpoof']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isTrustedSender: (() { final guardedValue = map['isTrustedSender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patternType: (() { final guardedValue = map['patternType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verifySender: (() { final guardedValue = map['verifySender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
