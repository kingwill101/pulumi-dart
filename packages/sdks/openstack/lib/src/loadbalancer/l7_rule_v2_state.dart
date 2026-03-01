// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering L7RuleV2 resources.
class L7RuleV2State {
  /// The administrative state of the L7 Rule.
  /// A valid value is true (UP) or false (DOWN).
  final pulumi.Input<bool>? adminStateUp;
  /// The comparison type for the L7 rule - can either be
  /// CONTAINS, STARTS\_WITH, ENDS_WITH, EQUAL_TO or REGEX
  final pulumi.Input<String>? compareType;
  /// When true the logic of the rule is inverted. For example, with invert
  /// true, equal to would become not equal to. Default is false.
  final pulumi.Input<bool>? invert;
  /// The key to use for the comparison. For example, the name of the cookie to
  /// evaluate. Valid when `type` is set to COOKIE or HEADER.
  final pulumi.Input<String>? key;
  /// The ID of the L7 Policy to query. Changing this creates a new
  /// L7 Rule.
  final pulumi.Input<String>? l7policyId;
  /// The ID of the Listener owning this resource.
  final pulumi.Input<String>? listenerId;
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
  final pulumi.Input<String>? type;
  /// The value to use for the comparison. For example, the file type to
  /// compare.
  final pulumi.Input<String>? value;

  /// Creates a new [L7RuleV2State].
  /// [adminStateUp] The administrative state of the L7 Rule.
  /// [compareType] The comparison type for the L7 rule - can either be
  /// [invert] When true the logic of the rule is inverted. For example, with invert
  /// [key] The key to use for the comparison. For example, the name of the cookie to
  /// [l7policyId] The ID of the L7 Policy to query. Changing this creates a new
  /// [listenerId] The ID of the Listener owning this resource.
  /// [region] The region in which to obtain the V2 Networking client.
  /// [tenantId] Required for admins. The UUID of the tenant who owns
  /// [type] The L7 Rule type - can either be COOKIE, FILE\_TYPE, HEADER,
  /// [value] The value to use for the comparison. For example, the file type to
  L7RuleV2State({
    pulumi.Output<bool>? adminStateUp,
    pulumi.Output<String>? compareType,
    pulumi.Output<bool>? invert,
    pulumi.Output<String>? key,
    pulumi.Output<String>? l7policyId,
    pulumi.Output<String>? listenerId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? tenantId,
    pulumi.Output<String>? type,
    pulumi.Output<String>? value,
  }) :
      adminStateUp = pulumi.Input.asOptionalInput<bool>(adminStateUp),
      compareType = pulumi.Input.asOptionalInput<String>(compareType),
      invert = pulumi.Input.asOptionalInput<bool>(invert),
      key = pulumi.Input.asOptionalInput<String>(key),
      l7policyId = pulumi.Input.asOptionalInput<String>(l7policyId),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      type = pulumi.Input.asOptionalInput<String>(type),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'compareType': ?compareType,
      'invert': ?invert,
      'key': ?key,
      'l7policyId': ?l7policyId,
      'listenerId': ?listenerId,
      'region': ?region,
      'tenantId': ?tenantId,
      'type': ?type,
      'value': ?value,
    };
  }

  factory L7RuleV2State.fromMap(Map<String, dynamic> map) {
    return L7RuleV2State(
      adminStateUp: map['adminStateUp'] == null ? null : pulumi.Output.create<bool>(map['adminStateUp'] as bool),
      compareType: map['compareType'] == null ? null : pulumi.Output.create<String>(map['compareType'] as String),
      invert: map['invert'] == null ? null : pulumi.Output.create<bool>(map['invert'] as bool),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      l7policyId: map['l7policyId'] == null ? null : pulumi.Output.create<String>(map['l7policyId'] as String),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

