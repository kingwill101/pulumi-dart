// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTurnstileWidgetFilter {
  /// Direction to order widgets.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Filter widgets by field using case-insensitive substring matching.
  /// Format: `field:value`
  final pulumi.Input<String?>? filter;
  /// Field to order widgets by.
  /// Available values: "id", "sitekey", "name", "createdOn", "modifiedOn".
  final pulumi.Input<String?>? order;

  /// Creates a new [GetTurnstileWidgetFilter].
  /// [direction] Direction to order widgets.
  /// [filter] Filter widgets by field using case-insensitive substring matching.
  /// [order] Field to order widgets by.
  const GetTurnstileWidgetFilter({
    this.direction,
    this.filter,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'filter': ?filter,
      'order': ?order,
    };
  }

  factory GetTurnstileWidgetFilter.fromMap(Map<String, dynamic> map) {
    return GetTurnstileWidgetFilter(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
