// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailSecurityBlockSendersResult {
  final pulumi.Input<String> comments;
  final pulumi.Input<String> createdAt;
  /// Blocked sender pattern identifier.
  final pulumi.Input<String> id;
  final pulumi.Input<bool> isRegex;
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

  /// Creates a new [GetEmailSecurityBlockSendersResult].
  /// [comments] Required.
  /// [createdAt] Required.
  /// [id] Blocked sender pattern identifier.
  /// [isRegex] Required.
  /// [lastModified] Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  /// [modifiedAt] Required.
  /// [pattern] The pattern value to match. The format depends on `patternType`: a valid email address for EMAIL (e.g. `user@example.com`), a valid domain name for DOMAIN (e.g. `example.com`), or a plain IPv4 or IPv6 address or CIDR block for IP (e.g. `1.2.3.4`, `1.2.3.0/24`, `2606:4700:4700::1111`, or `2606:4700:4700::/48`); the API rejects private or unique-local, loopback, link-local, unspecified, and IPv4 broadcast addresses, including their IPv4-mapped IPv6 equivalents.
  /// [patternType] Type of pattern matching.
  const GetEmailSecurityBlockSendersResult({
    required this.comments,
    required this.createdAt,
    required this.id,
    required this.isRegex,
    required this.lastModified,
    required this.modifiedAt,
    required this.pattern,
    required this.patternType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comments': comments,
      'createdAt': createdAt,
      'id': id,
      'isRegex': isRegex,
      'lastModified': lastModified,
      'modifiedAt': modifiedAt,
      'pattern': pattern,
      'patternType': patternType,
    };
  }

  factory GetEmailSecurityBlockSendersResult.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityBlockSendersResult(
      comments: pulumi.Input.fromValue(map['comments'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isRegex: pulumi.Input.fromValue(map['isRegex'] as bool),
      lastModified: pulumi.Input.fromValue(map['lastModified'] as String),
      modifiedAt: pulumi.Input.fromValue(map['modifiedAt'] as String),
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
      patternType: pulumi.Input.fromValue(map['patternType'] as String),
    );
  }
}
