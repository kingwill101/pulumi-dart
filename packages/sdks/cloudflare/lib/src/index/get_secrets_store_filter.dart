// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretsStoreFilter {
  /// Direction to sort objects.
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// Order stores by values in the given field.
  /// Available values: "name", "created", "modified".
  final pulumi.Input<String> order;

  /// Creates a new [GetSecretsStoreFilter].
  /// [direction] Direction to sort objects.
  /// [order] Order stores by values in the given field.
  const GetSecretsStoreFilter({
    required this.direction,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'order': order,
    };
  }

  factory GetSecretsStoreFilter.fromMap(Map<String, dynamic> map) {
    return GetSecretsStoreFilter(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      order: pulumi.Input.fromValue(map['order'] as String),
    );
  }
}
