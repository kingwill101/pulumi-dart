// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadbalancer_l7_rule_v2_l7_rule_v2_args_doc}
/// The set of arguments for L7RuleV2.
/// {@endtemplate}
/// {@macro pulumi_loadbalancer_l7_rule_v2_l7_rule_v2_args_doc}
class L7RuleV2Args {
  /// The administrative state of the L7 Rule.
  /// A valid value is true (UP) or false (DOWN).
  final pulumi.Input<bool>? adminStateUp;

  /// The comparison type for the L7 rule - can either be
  /// CONTAINS, STARTS\_WITH, ENDS_WITH, EQUAL_TO or REGEX
  final pulumi.Input<String> compareType;

  /// When true the logic of the rule is inverted. For example, with invert
  /// true, equal to would become not equal to. Default is false.
  final pulumi.Input<bool>? invert;

  /// The key to use for the comparison. For example, the name of the cookie to
  /// evaluate. Valid when `type` is set to COOKIE or HEADER.
  final pulumi.Input<String>? key;

  /// The ID of the L7 Policy to query. Changing this creates a new
  /// L7 Rule.
  final pulumi.Input<String> l7policyId;

  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an L7 rule. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// L7 Rule.
  final pulumi.Input<String>? region;

  /// Required for admins. The UUID of the tenant who owns
  /// the L7 Rule.  Only administrative users can specify a tenant UUID
  /// other than their own. Changing this creates a new L7 Rule.
  final pulumi.Input<String>? tenantId;

  /// The L7 Rule type - can either be COOKIE, FILE\_TYPE, HEADER,
  /// HOST\_NAME, PATH, SSL\_CONN\_HAS\_CERT, SSL\_VERIFY\_RESULT or SSL\_DN\_FIELD.
  final pulumi.Input<String> type;

  /// The value to use for the comparison. For example, the file type to
  /// compare.
  final pulumi.Input<String> value;

  /// Creates a new [L7RuleV2Args].
  /// [adminStateUp] The administrative state of the L7 Rule.
  /// [compareType] The comparison type for the L7 rule - can either be
  /// [invert] When true the logic of the rule is inverted. For example, with invert
  /// [key] The key to use for the comparison. For example, the name of the cookie to
  /// [l7policyId] The ID of the L7 Policy to query. Changing this creates a new
  /// [region] The region in which to obtain the V2 Networking client.
  /// [tenantId] Required for admins. The UUID of the tenant who owns
  /// [type] The L7 Rule type - can either be COOKIE, FILE\_TYPE, HEADER,
  /// [value] The value to use for the comparison. For example, the file type to
  L7RuleV2Args({
    this.adminStateUp,
    required this.compareType,
    this.invert,
    this.key,
    required this.l7policyId,
    this.region,
    this.tenantId,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'compareType': compareType,
      'invert': ?invert,
      'key': ?key,
      'l7policyId': l7policyId,
      'region': ?region,
      'tenantId': ?tenantId,
      'type': type,
      'value': value,
    };
  }

  factory L7RuleV2Args.fromMap(Map<String, dynamic> map) {
    return L7RuleV2Args(
      adminStateUp: (() {
        final guardedValue = map['adminStateUp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      compareType: pulumi.Input.fromValue(map['compareType'] as String),
      invert: (() {
        final guardedValue = map['invert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      l7policyId: pulumi.Input.fromValue(map['l7policyId'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
