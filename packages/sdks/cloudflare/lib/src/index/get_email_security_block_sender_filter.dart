// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailSecurityBlockSenderFilter {
  /// The sorting direction.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Filter to return only expired patterns (`true`) or only patterns that still apply (`false`). Omit to return both.
  final pulumi.Input<bool?>? expired;
  /// Field to sort by.
  /// Available values: "pattern", "createdAt".
  final pulumi.Input<String?>? order;
  /// Filter by pattern value.
  final pulumi.Input<String?>? pattern;
  /// Filter by pattern type.
  /// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
  final pulumi.Input<String?>? patternType;
  /// Search term for filtering records. Behavior may change.
  final pulumi.Input<String?>? search;

  /// Creates a new [GetEmailSecurityBlockSenderFilter].
  /// [direction] The sorting direction.
  /// [expired] Filter to return only expired patterns (`true`) or only patterns that still apply (`false`). Omit to return both.
  /// [order] Field to sort by.
  /// [pattern] Filter by pattern value.
  /// [patternType] Filter by pattern type.
  /// [search] Search term for filtering records. Behavior may change.
  const GetEmailSecurityBlockSenderFilter({
    this.direction,
    this.expired,
    this.order,
    this.pattern,
    this.patternType,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'expired': ?expired,
      'order': ?order,
      'pattern': ?pattern,
      'patternType': ?patternType,
      'search': ?search,
    };
  }

  factory GetEmailSecurityBlockSenderFilter.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityBlockSenderFilter(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expired: (() { final guardedValue = map['expired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patternType: (() { final guardedValue = map['patternType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
