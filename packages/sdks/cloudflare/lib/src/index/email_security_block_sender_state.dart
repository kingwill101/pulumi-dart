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
  /// The pattern value to match against. Format depends on `patternType`:
  /// - EMAIL: a valid email address, e.g. `user@example.com`
  /// - DOMAIN: a valid domain name, e.g. `example.com`
  /// - IP: a plain IPv4 address (e.g. `1.2.3.4`) or an IPv4 CIDR block (e.g. `1.2.3.0/24`). Only globally reachable addresses are accepted; private, loopback, link-local, and unspecified addresses are rejected.
  final pulumi.Input<String?>? pattern;
  /// Type of pattern matching.
  /// - EMAIL: matches a full email address (e.g. `user@example.com`)
  /// - DOMAIN: matches a domain name (e.g. `example.com`)
  /// - IP: matches a plain IPv4 address (e.g. `1.2.3.4`) or an IPv4 CIDR block (e.g. `1.2.3.0/24`). Only globally reachable addresses are accepted.
  /// - UNKNOWN: deprecated, cannot be used when creating or updating policies, but may be returned for existing entries.
  /// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
  final pulumi.Input<String?>? patternType;

  /// Creates a new [EmailSecurityBlockSenderState].
  /// [accountId] Identifier.
  /// [comments] Optional.
  /// [createdAt] Optional.
  /// [isRegex] Optional.
  /// [lastModified] Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  /// [modifiedAt] Optional.
  /// [pattern] The pattern value to match against. Format depends on `patternType`:
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
