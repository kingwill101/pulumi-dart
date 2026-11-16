// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsPolicySetFilter {
  /// Filter to policy sets attached to this deployment
  final pulumi.Input<String?>? deploymentId;
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// Filter by policy set name (case-insensitive substring match)
  final pulumi.Input<String?>? name;
  /// Field to order results by (default: created*at)
  /// Available values: "name", "created*at", "updatedAt".
  final pulumi.Input<String> order;

  /// Creates a new [GetZeroTrustCwsPolicySetFilter].
  /// [deploymentId] Filter to policy sets attached to this deployment
  /// [direction] Sort direction (default: asc)
  /// [name] Filter by policy set name (case-insensitive substring match)
  /// [order] Field to order results by (default: created*at)
  const GetZeroTrustCwsPolicySetFilter({
    this.deploymentId,
    required this.direction,
    this.name,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentId': ?deploymentId,
      'direction': direction,
      'name': ?name,
      'order': order,
    };
  }

  factory GetZeroTrustCwsPolicySetFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsPolicySetFilter(
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: pulumi.Input.fromValue(map['order'] as String),
    );
  }
}
