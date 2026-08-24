// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSpectrumApplicationFilter {
  /// Sets the direction by which results are ordered.
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// Application field by which results are ordered.
  /// Available values: "protocol", "app*id", "created*on", "modifiedOn", "dns".
  final pulumi.Input<String> order;

  /// Creates a new [GetSpectrumApplicationFilter].
  /// [direction] Sets the direction by which results are ordered.
  /// [order] Application field by which results are ordered.
  const GetSpectrumApplicationFilter({
    required this.direction,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'order': order,
    };
  }

  factory GetSpectrumApplicationFilter.fromMap(Map<String, dynamic> map) {
    return GetSpectrumApplicationFilter(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      order: pulumi.Input.fromValue(map['order'] as String),
    );
  }
}
