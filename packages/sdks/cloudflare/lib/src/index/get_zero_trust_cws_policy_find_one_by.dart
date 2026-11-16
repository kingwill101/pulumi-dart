// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsPolicyFindOneBy {
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// Filter by policy name (case-insensitive substring match)
  final pulumi.Input<String?>? name;
  /// Field to order results by (default: created*at)
  /// Available values: "name", "created*at", "updatedAt".
  final pulumi.Input<String> order;
  /// Filter by package path (case-sensitive literal substring match)
  final pulumi.Input<String?>? packagePath;
  /// Filter to policies attached to (members of) this policy set
  final pulumi.Input<String?>? policySetId;

  /// Creates a new [GetZeroTrustCwsPolicyFindOneBy].
  /// [direction] Sort direction (default: asc)
  /// [name] Filter by policy name (case-insensitive substring match)
  /// [order] Field to order results by (default: created*at)
  /// [packagePath] Filter by package path (case-sensitive literal substring match)
  /// [policySetId] Filter to policies attached to (members of) this policy set
  const GetZeroTrustCwsPolicyFindOneBy({
    required this.direction,
    this.name,
    required this.order,
    this.packagePath,
    this.policySetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'name': ?name,
      'order': order,
      'packagePath': ?packagePath,
      'policySetId': ?policySetId,
    };
  }

  factory GetZeroTrustCwsPolicyFindOneBy.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsPolicyFindOneBy(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: pulumi.Input.fromValue(map['order'] as String),
      packagePath: (() { final guardedValue = map['packagePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policySetId: (() { final guardedValue = map['policySetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
