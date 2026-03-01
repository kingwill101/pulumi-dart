// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_basic_profile.dart';

/// {@template pulumi_networksecurity_v1_rule_args_doc}
/// The set of arguments for Rule.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_rule_args_doc}
class RuleArgs {
  /// Optional. CEL expression for matching on L7/application level criteria.
  final pulumi.Input<String>? applicationMatcher;
  /// Profile which tells what the primitive action should be.
  final pulumi.Input<RuleBasicProfile> basicProfile;
  /// Optional. Free-text description of the resource.
  final pulumi.Input<String>? description;
  /// Whether the rule is enforced.
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> gatewaySecurityPolicyId;
  /// The ID to use for the rule, which will become the final component of the rule's resource name. This value should be 4-63 characters, and valid characters are /a-z-/.
  final pulumi.Input<String>? gatewaySecurityPolicyRuleId;
  final pulumi.Input<String>? location;
  /// Immutable. Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule} rule should match the pattern: (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final pulumi.Input<String> name;
  /// Priority of the rule. Lower number corresponds to higher precedence.
  final pulumi.Input<int> priority;
  final pulumi.Input<String>? project;
  /// CEL expression for matching on session criteria.
  final pulumi.Input<String> sessionMatcher;
  /// Optional. Flag to enable TLS inspection of traffic matching on , can only be true if the parent GatewaySecurityPolicy references a TLSInspectionConfig.
  final pulumi.Input<bool>? tlsInspectionEnabled;

  /// Creates a new [RuleArgs].
  /// [applicationMatcher] Optional. CEL expression for matching on L7/application level criteria.
  /// [basicProfile] Profile which tells what the primitive action should be.
  /// [description] Optional. Free-text description of the resource.
  /// [enabled] Whether the rule is enforced.
  /// [gatewaySecurityPolicyId] Required.
  /// [gatewaySecurityPolicyRuleId] The ID to use for the rule, which will become the final component of the rule's resource name. This value should be 4-63 characters, and valid characters are /a-z-/.
  /// [location] Optional.
  /// [name] Immutable. Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule} rule should match the pattern: (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  /// [priority] Priority of the rule. Lower number corresponds to higher precedence.
  /// [project] Optional.
  /// [sessionMatcher] CEL expression for matching on session criteria.
  /// [tlsInspectionEnabled] Optional. Flag to enable TLS inspection of traffic matching on , can only be true if the parent GatewaySecurityPolicy references a TLSInspectionConfig.
  RuleArgs({
    pulumi.Output<String>? applicationMatcher,
    required pulumi.Output<RuleBasicProfile> basicProfile,
    pulumi.Output<String>? description,
    required pulumi.Output<bool> enabled,
    required pulumi.Output<String> gatewaySecurityPolicyId,
    pulumi.Output<String>? gatewaySecurityPolicyRuleId,
    pulumi.Output<String>? location,
    required pulumi.Output<String> name,
    required pulumi.Output<int> priority,
    pulumi.Output<String>? project,
    required pulumi.Output<String> sessionMatcher,
    pulumi.Output<bool>? tlsInspectionEnabled,
  }) :
      applicationMatcher = pulumi.Input.asOptionalInput<String>(applicationMatcher),
      basicProfile = pulumi.Input.asInput<RuleBasicProfile>(basicProfile),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asInput<bool>(enabled),
      gatewaySecurityPolicyId = pulumi.Input.asInput<String>(gatewaySecurityPolicyId),
      gatewaySecurityPolicyRuleId = pulumi.Input.asOptionalInput<String>(gatewaySecurityPolicyRuleId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asInput<String>(name),
      priority = pulumi.Input.asInput<int>(priority),
      project = pulumi.Input.asOptionalInput<String>(project),
      sessionMatcher = pulumi.Input.asInput<String>(sessionMatcher),
      tlsInspectionEnabled = pulumi.Input.asOptionalInput<bool>(tlsInspectionEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationMatcher': ?applicationMatcher,
      'basicProfile': pulumi.Input.mapInputValue<RuleBasicProfile, String>(basicProfile, (value) => value.value),
      'description': ?description,
      'enabled': enabled,
      'gatewaySecurityPolicyId': gatewaySecurityPolicyId,
      'gatewaySecurityPolicyRuleId': ?gatewaySecurityPolicyRuleId,
      'location': ?location,
      'name': name,
      'priority': priority,
      'project': ?project,
      'sessionMatcher': sessionMatcher,
      'tlsInspectionEnabled': ?tlsInspectionEnabled,
    };
  }

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      applicationMatcher: map['applicationMatcher'] == null ? null : pulumi.Output.create<String>(map['applicationMatcher'] as String),
      basicProfile: pulumi.Output.create<RuleBasicProfile>(RuleBasicProfile.fromValue(map['basicProfile'] as String)),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: pulumi.Output.create<bool>(map['enabled'] as bool),
      gatewaySecurityPolicyId: pulumi.Output.create<String>(map['gatewaySecurityPolicyId'] as String),
      gatewaySecurityPolicyRuleId: map['gatewaySecurityPolicyRuleId'] == null ? null : pulumi.Output.create<String>(map['gatewaySecurityPolicyRuleId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      priority: pulumi.Output.create<int>(map['priority'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sessionMatcher: pulumi.Output.create<String>(map['sessionMatcher'] as String),
      tlsInspectionEnabled: map['tlsInspectionEnabled'] == null ? null : pulumi.Output.create<bool>(map['tlsInspectionEnabled'] as bool),
    );
  }
}

