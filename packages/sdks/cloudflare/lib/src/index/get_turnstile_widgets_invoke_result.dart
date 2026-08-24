// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_turnstile_widgets_result.dart';

/// Result data returned by getTurnstileWidgets.
class GetTurnstileWidgetsInvokeResult {
  /// Identifier
  final String? accountId;
  /// Direction to order widgets.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Filter widgets by field using case-insensitive substring matching.
  /// Format: `field:value`
  final String? filter;
  final int? maxItems;
  final String? order;
  final List<GetTurnstileWidgetsResult>? results;

  /// Creates a new [GetTurnstileWidgetsInvokeResult].
  /// [accountId] Identifier
  /// [direction] Direction to order widgets.
  /// [filter] Filter widgets by field using case-insensitive substring matching.
  /// [maxItems] Optional.
  /// [order] Optional.
  /// [results] Optional.
  const GetTurnstileWidgetsInvokeResult({
    this.accountId,
    this.direction,
    this.filter,
    this.maxItems,
    this.order,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'filter': ?filter,
      'maxItems': ?maxItems,
      'order': ?order,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTurnstileWidgetsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetTurnstileWidgetsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetTurnstileWidgetsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTurnstileWidgetsResult>(guardedValue, (value) => GetTurnstileWidgetsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
