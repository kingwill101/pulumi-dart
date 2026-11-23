// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyPolicyQuery {
  /// The group that the query applies to.
  final pulumi.Input<String?>? group;
  /// The OrgUnit the query applies to, in the format `orgUnits/{org_unit_id}`.
  /// `{org_unit_id}` is the obfuscated org unit ID, the same value the Admin SDK
  /// Directory API returns as `orgUnitId` without its `id:` prefix. Org unit paths
  /// and display names are not resolved and are rejected for most settings.
  /// For detector settings (`settings/detector.*`), the API ignores this value and
  /// always applies the policy to, and returns, the customer's root org unit, so any
  /// other value produces a diff; set it to the root org unit's ID.
  final pulumi.Input<String> orgUnit;
  /// The CEL query that defines which entities the Policy applies to.
  final pulumi.Input<String?>? query;
  /// (Output)
  /// Decimal sort order of this PolicyQuery.
  final pulumi.Input<int?>? sortOrder;

  /// Creates a new [PolicyPolicyQuery].
  /// [group] The group that the query applies to.
  /// [orgUnit] The OrgUnit the query applies to, in the format `orgUnits/{org_unit_id}`.
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
      sortOrder: (() { final guardedValue = map['sortOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
