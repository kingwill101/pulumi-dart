// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_turnstile_widgets_get_turnstile_widgets_args_doc}
/// Arguments for getTurnstileWidgets.
/// {@endtemplate}
/// {@macro pulumi_index_get_turnstile_widgets_get_turnstile_widgets_args_doc}
class GetTurnstileWidgetsArgs {
  /// Identifier
  final pulumi.Input<String?>? accountId;
  /// Direction to order widgets.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Filter widgets by field using case-insensitive substring matching.
  /// Format: `field:value`
  final pulumi.Input<String?>? filter;
  final pulumi.Input<int?>? maxItems;
  final pulumi.Input<String?>? order;

  /// Creates a new [GetTurnstileWidgetsArgs].
  /// [accountId] Identifier
  /// [direction] Direction to order widgets.
  /// [filter] Filter widgets by field using case-insensitive substring matching.
  /// [maxItems] Optional.
  /// [order] Optional.
  const GetTurnstileWidgetsArgs({
    this.accountId,
    this.direction,
    this.filter,
    this.maxItems,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'filter': ?filter,
      'maxItems': ?maxItems,
      'order': ?order,
    };
  }

  factory GetTurnstileWidgetsArgs.fromMap(Map<String, dynamic> map) {
    return GetTurnstileWidgetsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
