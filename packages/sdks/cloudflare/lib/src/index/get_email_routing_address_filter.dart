// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailRoutingAddressFilter {
  /// Sorts results in an ascending or descending order.
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// Filter by verified destination addresses.
  final pulumi.Input<bool> verified;

  /// Creates a new [GetEmailRoutingAddressFilter].
  /// [direction] Sorts results in an ascending or descending order.
  /// [verified] Filter by verified destination addresses.
  const GetEmailRoutingAddressFilter({
    required this.direction,
    required this.verified,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'verified': verified,
    };
  }

  factory GetEmailRoutingAddressFilter.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingAddressFilter(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      verified: pulumi.Input.fromValue(map['verified'] as bool),
    );
  }
}
