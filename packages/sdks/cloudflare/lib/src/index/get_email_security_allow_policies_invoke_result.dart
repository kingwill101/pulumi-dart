// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_security_allow_policies_result.dart';

/// Result data returned by getEmailSecurityAllowPolicies.
class GetEmailSecurityAllowPoliciesInvokeResult {
  final String? accountId;
  final String? direction;
  final bool? isAcceptableSender;
  final bool? isExemptRecipient;
  final bool? isTrustedSender;
  final int? maxItems;
  final String? order;
  final String? pattern;
  final String? patternType;
  final List<GetEmailSecurityAllowPoliciesResult>? results;
  final String? search;
  final bool? verifySender;

  /// Creates a new [GetEmailSecurityAllowPoliciesInvokeResult].
  /// [accountId] Optional.
  /// [direction] Optional.
  /// [isAcceptableSender] Optional.
  /// [isExemptRecipient] Optional.
  /// [isTrustedSender] Optional.
  /// [maxItems] Optional.
  /// [order] Optional.
  /// [pattern] Optional.
  /// [patternType] Optional.
  /// [results] Optional.
  /// [search] Optional.
  /// [verifySender] Optional.
  const GetEmailSecurityAllowPoliciesInvokeResult({
    this.accountId,
    this.direction,
    this.isAcceptableSender,
    this.isExemptRecipient,
    this.isTrustedSender,
    this.maxItems,
    this.order,
    this.pattern,
    this.patternType,
    this.results,
    this.search,
    this.verifySender,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'isAcceptableSender': ?isAcceptableSender,
      'isExemptRecipient': ?isExemptRecipient,
      'isTrustedSender': ?isTrustedSender,
      'maxItems': ?maxItems,
      'order': ?order,
      'pattern': ?pattern,
      'patternType': ?patternType,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEmailSecurityAllowPoliciesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
      'verifySender': ?verifySender,
    };
  }

  factory GetEmailSecurityAllowPoliciesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityAllowPoliciesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isAcceptableSender: (() { final guardedValue = map['isAcceptableSender']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isExemptRecipient: (() { final guardedValue = map['isExemptRecipient']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isTrustedSender: (() { final guardedValue = map['isTrustedSender']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return guardedValue as String; })(),
      patternType: (() { final guardedValue = map['patternType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEmailSecurityAllowPoliciesResult>(guardedValue, (value) => GetEmailSecurityAllowPoliciesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
      verifySender: (() { final guardedValue = map['verifySender']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
