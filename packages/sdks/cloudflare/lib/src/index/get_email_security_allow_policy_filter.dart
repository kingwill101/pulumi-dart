// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailSecurityAllowPolicyFilter {
  /// The sorting direction.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Filter to show only policies where messages from the sender are exempted from Spam, Spoof, and Bulk dispositions (not Malicious or Suspicious).
  final pulumi.Input<bool?>? isAcceptableSender;
  /// Filter to show only policies where messages to the recipient bypass all detections.
  final pulumi.Input<bool?>? isExemptRecipient;
  /// Filter to show only policies where messages from the sender bypass all detections and link following.
  final pulumi.Input<bool?>? isTrustedSender;
  /// Field to sort by.
  /// Available values: "pattern", "createdAt".
  final pulumi.Input<String?>? order;
  /// Filter by exact pattern value.
  final pulumi.Input<String?>? pattern;
  /// Filter by pattern type.
  /// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
  final pulumi.Input<String?>? patternType;
  /// Search term for filtering records. Behavior may change.
  final pulumi.Input<String?>? search;
  /// Filter to show only policies that enforce DMARC, SPF, or DKIM authentication.
  final pulumi.Input<bool?>? verifySender;

  /// Creates a new [GetEmailSecurityAllowPolicyFilter].
  /// [direction] The sorting direction.
  /// [isAcceptableSender] Filter to show only policies where messages from the sender are exempted from Spam, Spoof, and Bulk dispositions (not Malicious or Suspicious).
  /// [isExemptRecipient] Filter to show only policies where messages to the recipient bypass all detections.
  /// [isTrustedSender] Filter to show only policies where messages from the sender bypass all detections and link following.
  /// [order] Field to sort by.
  /// [pattern] Filter by exact pattern value.
  /// [patternType] Filter by pattern type.
  /// [search] Search term for filtering records. Behavior may change.
  /// [verifySender] Filter to show only policies that enforce DMARC, SPF, or DKIM authentication.
  const GetEmailSecurityAllowPolicyFilter({
    this.direction,
    this.isAcceptableSender,
    this.isExemptRecipient,
    this.isTrustedSender,
    this.order,
    this.pattern,
    this.patternType,
    this.search,
    this.verifySender,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'isAcceptableSender': ?isAcceptableSender,
      'isExemptRecipient': ?isExemptRecipient,
      'isTrustedSender': ?isTrustedSender,
      'order': ?order,
      'pattern': ?pattern,
      'patternType': ?patternType,
      'search': ?search,
      'verifySender': ?verifySender,
    };
  }

  factory GetEmailSecurityAllowPolicyFilter.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityAllowPolicyFilter(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isAcceptableSender: (() { final guardedValue = map['isAcceptableSender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isExemptRecipient: (() { final guardedValue = map['isExemptRecipient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isTrustedSender: (() { final guardedValue = map['isTrustedSender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patternType: (() { final guardedValue = map['patternType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verifySender: (() { final guardedValue = map['verifySender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
