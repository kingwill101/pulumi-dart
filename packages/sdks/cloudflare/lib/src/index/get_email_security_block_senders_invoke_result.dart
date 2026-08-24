// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_security_block_senders_result.dart';

/// Result data returned by getEmailSecurityBlockSenders.
class GetEmailSecurityBlockSendersInvokeResult {
  final String? accountId;
  final String? direction;
  final int? maxItems;
  final String? order;
  final String? pattern;
  final String? patternType;
  final List<GetEmailSecurityBlockSendersResult>? results;
  final String? search;

  /// Creates a new [GetEmailSecurityBlockSendersInvokeResult].
  /// [accountId] Optional.
  /// [direction] Optional.
  /// [maxItems] Optional.
  /// [order] Optional.
  /// [pattern] Optional.
  /// [patternType] Optional.
  /// [results] Optional.
  /// [search] Optional.
  const GetEmailSecurityBlockSendersInvokeResult({
    this.accountId,
    this.direction,
    this.maxItems,
    this.order,
    this.pattern,
    this.patternType,
    this.results,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
      'pattern': ?pattern,
      'patternType': ?patternType,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEmailSecurityBlockSendersResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
    };
  }

  factory GetEmailSecurityBlockSendersInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityBlockSendersInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return guardedValue as String; })(),
      patternType: (() { final guardedValue = map['patternType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEmailSecurityBlockSendersResult>(guardedValue, (value) => GetEmailSecurityBlockSendersResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
