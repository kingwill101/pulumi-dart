// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailSecurityBlockSender resources.
class EmailSecurityBlockSenderState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? comments;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<bool?>? isRegex;
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

  /// Creates a new [EmailSecurityBlockSenderState].
  /// [accountId] Identifier.
  /// [comments] Optional.
  /// [createdAt] Optional.
  /// [isRegex] Optional.
  /// [lastModified] Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  /// [modifiedAt] Optional.
  /// [pattern] The pattern value to match. The format depends on `patternType`: a valid email address for EMAIL (e.g. `user@example.com`), a valid domain name for DOMAIN (e.g. `example.com`), or a plain IPv4 or IPv6 address or CIDR block for IP (e.g. `1.2.3.4`, `1.2.3.0/24`, `2606:4700:4700::1111`, or `2606:4700:4700::/48`); the API rejects private or unique-local, loopback, link-local, unspecified, and IPv4 broadcast addresses, including their IPv4-mapped IPv6 equivalents.
  /// [patternType] Type of pattern matching.
  const EmailSecurityBlockSenderState({
    this.accountId,
    this.comments,
    this.createdAt,
    this.isRegex,
    this.lastModified,
    this.modifiedAt,
    this.pattern,
    this.patternType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'comments': ?comments,
      'createdAt': ?createdAt,
      'isRegex': ?isRegex,
      'lastModified': ?lastModified,
      'modifiedAt': ?modifiedAt,
      'pattern': ?pattern,
      'patternType': ?patternType,
    };
  }

  factory EmailSecurityBlockSenderState.fromMap(Map<String, dynamic> map) {
    return EmailSecurityBlockSenderState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isRegex: (() { final guardedValue = map['isRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patternType: (() { final guardedValue = map['patternType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
