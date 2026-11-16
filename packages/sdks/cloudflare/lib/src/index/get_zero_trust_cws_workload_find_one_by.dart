// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsWorkloadFindOneBy {
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// Filter by workload name (case-insensitive substring match)
  final pulumi.Input<String?>? name;
  /// Field to order results by (default: created*at)
  /// Available values: "name", "created*at", "updatedAt".
  final pulumi.Input<String> order;
  /// Filter to workloads attached to this policy set
  final pulumi.Input<String?>? policySetId;

  /// Creates a new [GetZeroTrustCwsWorkloadFindOneBy].
  /// [direction] Sort direction (default: asc)
  /// [name] Filter by workload name (case-insensitive substring match)
  /// [order] Field to order results by (default: created*at)
  /// [policySetId] Filter to workloads attached to this policy set
  const GetZeroTrustCwsWorkloadFindOneBy({
    required this.direction,
    this.name,
    required this.order,
    this.policySetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'name': ?name,
      'order': order,
      'policySetId': ?policySetId,
    };
  }

  factory GetZeroTrustCwsWorkloadFindOneBy.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsWorkloadFindOneBy(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: pulumi.Input.fromValue(map['order'] as String),
      policySetId: (() { final guardedValue = map['policySetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
