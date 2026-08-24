// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersKvNamespaceFilter {
  /// Direction to order namespaces.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Field to order results by.
  /// Available values: "id", "title".
  final pulumi.Input<String?>? order;

  /// Creates a new [GetWorkersKvNamespaceFilter].
  /// [direction] Direction to order namespaces.
  /// [order] Field to order results by.
  const GetWorkersKvNamespaceFilter({
    this.direction,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'order': ?order,
    };
  }

  factory GetWorkersKvNamespaceFilter.fromMap(Map<String, dynamic> map) {
    return GetWorkersKvNamespaceFilter(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
