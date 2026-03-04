// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_gateway_security_policy_rule_gateway_security_policy_rule_args_doc}
/// The set of arguments for GatewaySecurityPolicyRule.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_gateway_security_policy_rule_gateway_security_policy_rule_args_doc}
class GatewaySecurityPolicyRuleArgs {
  /// CEL expression for matching on L7/application level criteria.
  final pulumi.Input<String>? applicationMatcher;

  /// Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY.
  /// Possible values are: `BASIC_PROFILE_UNSPECIFIED`, `ALLOW`, `DENY`.
  final pulumi.Input<String> basicProfile;

  /// Free-text description of the resource.
  final pulumi.Input<String>? description;

  /// Whether the rule is enforced.
  final pulumi.Input<bool> enabled;

  /// The name of the gatewat security policy this rule belongs to.
  final pulumi.Input<String> gatewaySecurityPolicy;

  /// The location of the gateway security policy.
  final pulumi.Input<String> location;

  /// Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
  /// rule should match the pattern: (^a-z?$).
  final pulumi.Input<String>? name;

  /// Priority of the rule. Lower number corresponds to higher precedence.
  final pulumi.Input<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// CEL expression for matching on session criteria.
  final pulumi.Input<String> sessionMatcher;

  /// Flag to enable TLS inspection of traffic matching on. Can only be true if the
  /// parent GatewaySecurityPolicy references a TLSInspectionConfig.
  final pulumi.Input<bool>? tlsInspectionEnabled;

  /// Creates a new [GatewaySecurityPolicyRuleArgs].
  /// [applicationMatcher] CEL expression for matching on L7/application level criteria.
  /// [basicProfile] Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY.
  /// [description] Free-text description of the resource.
  /// [enabled] Whether the rule is enforced.
  /// [gatewaySecurityPolicy] The name of the gatewat security policy this rule belongs to.
  /// [location] The location of the gateway security policy.
  /// [name] Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
  /// [priority] Priority of the rule. Lower number corresponds to higher precedence.
  /// [project] The ID of the project in which the resource belongs.
  /// [sessionMatcher] CEL expression for matching on session criteria.
  /// [tlsInspectionEnabled] Flag to enable TLS inspection of traffic matching on. Can only be true if the
  GatewaySecurityPolicyRuleArgs({
    this.applicationMatcher,
    required this.basicProfile,
    this.description,
    required this.enabled,
    required this.gatewaySecurityPolicy,
    required this.location,
    this.name,
    required this.priority,
    this.project,
    required this.sessionMatcher,
    this.tlsInspectionEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationMatcher': ?applicationMatcher,
      'basicProfile': basicProfile,
      'description': ?description,
      'enabled': enabled,
      'gatewaySecurityPolicy': gatewaySecurityPolicy,
      'location': location,
      'name': ?name,
      'priority': priority,
      'project': ?project,
      'sessionMatcher': sessionMatcher,
      'tlsInspectionEnabled': ?tlsInspectionEnabled,
    };
  }

  factory GatewaySecurityPolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return GatewaySecurityPolicyRuleArgs(
      applicationMatcher: (() {
        final guardedValue = map['applicationMatcher'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      basicProfile: pulumi.Input.fromValue(map['basicProfile'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      gatewaySecurityPolicy: pulumi.Input.fromValue(
        map['gatewaySecurityPolicy'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sessionMatcher: pulumi.Input.fromValue(map['sessionMatcher'] as String),
      tlsInspectionEnabled: (() {
        final guardedValue = map['tlsInspectionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
