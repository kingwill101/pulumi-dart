// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewaySecurityPolicyRule resources.
class GatewaySecurityPolicyRuleState {
  /// CEL expression for matching on L7/application level criteria.
  final pulumi.Input<String>? applicationMatcher;
  /// Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY.
  /// Possible values are: `BASIC_PROFILE_UNSPECIFIED`, `ALLOW`, `DENY`.
  final pulumi.Input<String>? basicProfile;
  /// The timestamp when the resource was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  final pulumi.Input<String>? createTime;
  /// Free-text description of the resource.
  final pulumi.Input<String>? description;
  /// Whether the rule is enforced.
  final pulumi.Input<bool>? enabled;
  /// The name of the gatewat security policy this rule belongs to.
  final pulumi.Input<String>? gatewaySecurityPolicy;
  /// The location of the gateway security policy.
  final pulumi.Input<String>? location;
  /// Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
  /// rule should match the pattern: (^a-z?$).
  final pulumi.Input<String>? name;
  /// Priority of the rule. Lower number corresponds to higher precedence.
  final pulumi.Input<int>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Server-defined URL of this resource.
  final pulumi.Input<String>? selfLink;
  /// CEL expression for matching on session criteria.
  final pulumi.Input<String>? sessionMatcher;
  /// Flag to enable TLS inspection of traffic matching on. Can only be true if the
  /// parent GatewaySecurityPolicy references a TLSInspectionConfig.
  final pulumi.Input<bool>? tlsInspectionEnabled;
  /// The timestamp when the resource was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GatewaySecurityPolicyRuleState].
  /// [applicationMatcher] CEL expression for matching on L7/application level criteria.
  /// [basicProfile] Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY.
  /// [createTime] The timestamp when the resource was created.
  /// [description] Free-text description of the resource.
  /// [enabled] Whether the rule is enforced.
  /// [gatewaySecurityPolicy] The name of the gatewat security policy this rule belongs to.
  /// [location] The location of the gateway security policy.
  /// [name] Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
  /// [priority] Priority of the rule. Lower number corresponds to higher precedence.
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] Server-defined URL of this resource.
  /// [sessionMatcher] CEL expression for matching on session criteria.
  /// [tlsInspectionEnabled] Flag to enable TLS inspection of traffic matching on. Can only be true if the
  /// [updateTime] The timestamp when the resource was updated.
  GatewaySecurityPolicyRuleState({
    pulumi.Output<String>? applicationMatcher,
    pulumi.Output<String>? basicProfile,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? gatewaySecurityPolicy,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? project,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? sessionMatcher,
    pulumi.Output<bool>? tlsInspectionEnabled,
    pulumi.Output<String>? updateTime,
  }) :
      applicationMatcher = pulumi.Input.asOptionalInput<String>(applicationMatcher),
      basicProfile = pulumi.Input.asOptionalInput<String>(basicProfile),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      gatewaySecurityPolicy = pulumi.Input.asOptionalInput<String>(gatewaySecurityPolicy),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      project = pulumi.Input.asOptionalInput<String>(project),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      sessionMatcher = pulumi.Input.asOptionalInput<String>(sessionMatcher),
      tlsInspectionEnabled = pulumi.Input.asOptionalInput<bool>(tlsInspectionEnabled),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationMatcher': ?applicationMatcher,
      'basicProfile': ?basicProfile,
      'createTime': ?createTime,
      'description': ?description,
      'enabled': ?enabled,
      'gatewaySecurityPolicy': ?gatewaySecurityPolicy,
      'location': ?location,
      'name': ?name,
      'priority': ?priority,
      'project': ?project,
      'selfLink': ?selfLink,
      'sessionMatcher': ?sessionMatcher,
      'tlsInspectionEnabled': ?tlsInspectionEnabled,
      'updateTime': ?updateTime,
    };
  }

  factory GatewaySecurityPolicyRuleState.fromMap(Map<String, dynamic> map) {
    return GatewaySecurityPolicyRuleState(
      applicationMatcher: map['applicationMatcher'] == null ? null : pulumi.Output.create<String>(map['applicationMatcher'] as String),
      basicProfile: map['basicProfile'] == null ? null : pulumi.Output.create<String>(map['basicProfile'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      gatewaySecurityPolicy: map['gatewaySecurityPolicy'] == null ? null : pulumi.Output.create<String>(map['gatewaySecurityPolicy'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      sessionMatcher: map['sessionMatcher'] == null ? null : pulumi.Output.create<String>(map['sessionMatcher'] as String),
      tlsInspectionEnabled: map['tlsInspectionEnabled'] == null ? null : pulumi.Output.create<bool>(map['tlsInspectionEnabled'] as bool),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

