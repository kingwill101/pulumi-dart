// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_basic_profile_networksecurity_v1beta1.dart';

/// {@template pulumi_networksecurity_v1beta1_rule_networksecurity_v1beta1_args_doc}
/// The set of arguments for Rule.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_rule_networksecurity_v1beta1_args_doc}
class RuleNetworksecurityV1beta1Args {
  /// Optional. CEL expression for matching on L7/application level criteria.
  final pulumi.Input<String>? applicationMatcher;
  /// Profile which tells what the primitive action should be.
  final pulumi.Input<RuleBasicProfileNetworksecurityV1beta1> basicProfile;
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

  /// Creates a new [RuleNetworksecurityV1beta1Args].
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
  RuleNetworksecurityV1beta1Args({
    this.applicationMatcher,
    required this.basicProfile,
    this.description,
    required this.enabled,
    required this.gatewaySecurityPolicyId,
    this.gatewaySecurityPolicyRuleId,
    this.location,
    required this.name,
    required this.priority,
    this.project,
    required this.sessionMatcher,
    this.tlsInspectionEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationMatcher': ?applicationMatcher,
      'basicProfile': pulumi.Input.mapInputValue<RuleBasicProfileNetworksecurityV1beta1, String>(basicProfile, (value) => value.value),
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

  factory RuleNetworksecurityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return RuleNetworksecurityV1beta1Args(
      applicationMatcher: map['applicationMatcher'] == null ? null : (map['applicationMatcher'] as String).input(),
      basicProfile: (RuleBasicProfileNetworksecurityV1beta1.fromValue(map['basicProfile'] as String)).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
      gatewaySecurityPolicyId: (map['gatewaySecurityPolicyId'] as String).input(),
      gatewaySecurityPolicyRuleId: map['gatewaySecurityPolicyRuleId'] == null ? null : (map['gatewaySecurityPolicyRuleId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      priority: (map['priority'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      sessionMatcher: (map['sessionMatcher'] as String).input(),
      tlsInspectionEnabled: map['tlsInspectionEnabled'] == null ? null : (map['tlsInspectionEnabled'] as bool).input(),
    );
  }
}

