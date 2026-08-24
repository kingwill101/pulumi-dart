// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstanceFilter {
  /// Filter by namespace.
  final pulumi.Input<String?>? namespace;
  /// Field to order results by.
  /// Available values: "createdAt".
  final pulumi.Input<String> orderBy;
  /// Order direction.
  /// Available values: "asc", "desc".
  final pulumi.Input<String> orderByDirection;
  /// Filter instances whose id contains this string (case-insensitive).
  final pulumi.Input<String?>? search;

  /// Creates a new [GetAiSearchInstanceFilter].
  /// [namespace] Filter by namespace.
  /// [orderBy] Field to order results by.
  /// [orderByDirection] Order direction.
  /// [search] Filter instances whose id contains this string (case-insensitive).
  const GetAiSearchInstanceFilter({
    this.namespace,
    required this.orderBy,
    required this.orderByDirection,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
      'orderBy': orderBy,
      'orderByDirection': orderByDirection,
      'search': ?search,
    };
  }

  factory GetAiSearchInstanceFilter.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstanceFilter(
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderBy: pulumi.Input.fromValue(map['orderBy'] as String),
      orderByDirection: pulumi.Input.fromValue(map['orderByDirection'] as String),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
