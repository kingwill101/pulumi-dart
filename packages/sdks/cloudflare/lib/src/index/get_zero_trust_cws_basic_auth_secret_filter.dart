// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsBasicAuthSecretFilter {
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// Field to order results by (default: created*at)
  /// Available values: "created*at".
  final pulumi.Input<String> order;

  /// Creates a new [GetZeroTrustCwsBasicAuthSecretFilter].
  /// [direction] Sort direction (default: asc)
  /// [order] Field to order results by (default: created*at)
  const GetZeroTrustCwsBasicAuthSecretFilter({
    required this.direction,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'order': order,
    };
  }

  factory GetZeroTrustCwsBasicAuthSecretFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsBasicAuthSecretFilter(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      order: pulumi.Input.fromValue(map['order'] as String),
    );
  }
}
