// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyPolicyQuery {
  /// The group that the query applies to.
  final pulumi.Input<String?>? group;
  /// The OrgUnit the query applies to.
  final pulumi.Input<String> orgUnit;
  /// The CEL query that defines which entities the Policy applies to.
  final pulumi.Input<String?>? query;
  /// (Output)
  /// Decimal sort order of this PolicyQuery.
  final pulumi.Input<int?>? sortOrder;

  /// Creates a new [PolicyPolicyQuery].
  /// [group] The group that the query applies to.
  /// [orgUnit] The OrgUnit the query applies to.
  /// [query] The CEL query that defines which entities the Policy applies to.
  /// [sortOrder] (Output)
  const PolicyPolicyQuery({
    this.group,
    required this.orgUnit,
    this.query,
    this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'orgUnit': orgUnit,
      'query': ?query,
      'sortOrder': ?sortOrder,
    };
  }

  factory PolicyPolicyQuery.fromMap(Map<String, dynamic> map) {
    return PolicyPolicyQuery(
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgUnit: pulumi.Input.fromValue(map['orgUnit'] as String),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sortOrder: (() { final guardedValue = map['sortOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
