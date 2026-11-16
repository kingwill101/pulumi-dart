// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsDeploymentFilter {
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// Filter by deployment name (case-insensitive substring match)
  final pulumi.Input<String?>? name;
  /// Field to order results by (default: created*at)
  /// Available values: "name", "created*at", "updatedAt".
  final pulumi.Input<String> order;

  /// Creates a new [GetZeroTrustCwsDeploymentFilter].
  /// [direction] Sort direction (default: asc)
  /// [name] Filter by deployment name (case-insensitive substring match)
  /// [order] Field to order results by (default: created*at)
  const GetZeroTrustCwsDeploymentFilter({
    required this.direction,
    this.name,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'name': ?name,
      'order': order,
    };
  }

  factory GetZeroTrustCwsDeploymentFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsDeploymentFilter(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: pulumi.Input.fromValue(map['order'] as String),
    );
  }
}
