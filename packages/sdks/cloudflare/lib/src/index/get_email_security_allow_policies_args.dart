// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_email_security_allow_policies_get_email_security_allow_policies_args_doc}
/// Arguments for getEmailSecurityAllowPolicies.
/// {@endtemplate}
/// {@macro pulumi_index_get_email_security_allow_policies_get_email_security_allow_policies_args_doc}
class GetEmailSecurityAllowPoliciesArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String?>? direction;
  final pulumi.Input<bool?>? isAcceptableSender;
  final pulumi.Input<bool?>? isExemptRecipient;
  final pulumi.Input<bool?>? isTrustedSender;
  final pulumi.Input<int?>? maxItems;
  final pulumi.Input<String?>? order;
  final pulumi.Input<String?>? pattern;
  final pulumi.Input<String?>? patternType;
  final pulumi.Input<String?>? search;
  final pulumi.Input<bool?>? verifySender;

  /// Creates a new [GetEmailSecurityAllowPoliciesArgs].
  /// [accountId] Required.
  /// [direction] Optional.
  /// [isAcceptableSender] Optional.
  /// [isExemptRecipient] Optional.
  /// [isTrustedSender] Optional.
  /// [maxItems] Optional.
  /// [order] Optional.
  /// [pattern] Optional.
  /// [patternType] Optional.
  /// [search] Optional.
  /// [verifySender] Optional.
  const GetEmailSecurityAllowPoliciesArgs({
    required this.accountId,
    this.direction,
    this.isAcceptableSender,
    this.isExemptRecipient,
    this.isTrustedSender,
    this.maxItems,
    this.order,
    this.pattern,
    this.patternType,
    this.search,
    this.verifySender,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'direction': ?direction,
      'isAcceptableSender': ?isAcceptableSender,
      'isExemptRecipient': ?isExemptRecipient,
      'isTrustedSender': ?isTrustedSender,
      'maxItems': ?maxItems,
      'order': ?order,
      'pattern': ?pattern,
      'patternType': ?patternType,
      'search': ?search,
      'verifySender': ?verifySender,
    };
  }

  factory GetEmailSecurityAllowPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityAllowPoliciesArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isAcceptableSender: (() { final guardedValue = map['isAcceptableSender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isExemptRecipient: (() { final guardedValue = map['isExemptRecipient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isTrustedSender: (() { final guardedValue = map['isTrustedSender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patternType: (() { final guardedValue = map['patternType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verifySender: (() { final guardedValue = map['verifySender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
