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
      'basicProfile': pulumi.Input.mapInputValue<RuleBasicProfileNetworksecurityV1beta1, String>(basicProfile, (value) => value.wireValue),
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
      applicationMatcher: (() { final guardedValue = map['applicationMatcher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      basicProfile: pulumi.Input.fromValue(RuleBasicProfileNetworksecurityV1beta1.fromValue(map['basicProfile']! as String)),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      gatewaySecurityPolicyId: pulumi.Input.fromValue(map['gatewaySecurityPolicyId'] as String),
      gatewaySecurityPolicyRuleId: (() { final guardedValue = map['gatewaySecurityPolicyRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionMatcher: pulumi.Input.fromValue(map['sessionMatcher'] as String),
      tlsInspectionEnabled: (() { final guardedValue = map['tlsInspectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

