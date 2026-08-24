// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerFilter {
  /// Sort direction.
  /// Available values: "asc", "desc".
  final pulumi.Input<String> order;
  /// Property to sort results by.
  /// Available values: "deployed*on", "updated*on", "createdOn", "name".
  final pulumi.Input<String> orderBy;

  /// Creates a new [GetWorkerFilter].
  /// [order] Sort direction.
  /// [orderBy] Property to sort results by.
  const GetWorkerFilter({
    required this.order,
    required this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'order': order,
      'orderBy': orderBy,
    };
  }

  factory GetWorkerFilter.fromMap(Map<String, dynamic> map) {
    return GetWorkerFilter(
      order: pulumi.Input.fromValue(map['order'] as String),
      orderBy: pulumi.Input.fromValue(map['orderBy'] as String),
    );
  }
}
