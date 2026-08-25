// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_custom_provider.dart';
import 'authz_policy_http_rule.dart';
import 'authz_policy_network_rule.dart';
import 'authz_policy_target.dart';

/// {@template pulumi_networksecurity_authz_policy_authz_policy_args_doc}
/// The set of arguments for AuthzPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_authz_policy_authz_policy_args_doc}
class AuthzPolicyArgs {
  /// When the action is CUSTOM, customProvider must be specified.
  /// When the action is ALLOW, only requests matching the policy will be allowed.
  /// When the action is DENY, only requests matching the policy will be denied.
  /// When a request arrives, the policies are evaluated in the following order:
  /// 1. If there is a CUSTOM policy that matches the request, the CUSTOM policy is evaluated using the custom authorization providers and the request is denied if the provider rejects the request.
  /// 2. If there are any DENY policies that match the request, the request is denied.
  /// 3. If there are no ALLOW policies for the resource or if any of the ALLOW policies match the request, the request is allowed.
  /// 4. Else the request is denied by default if none of the configured AuthzPolicies with ALLOW action match the request.
  /// Possible values are: `ALLOW`, `DENY`, `CUSTOM`.
  final pulumi.Input<String> action;
  /// Required if the action is CUSTOM. Allows delegating authorization decisions to Cloud IAP or to Service Extensions. One of cloudIap or authzExtension must be specified.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyCustomProvider?>? customProvider;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A human-readable description of the resource.
  final pulumi.Input<String?>? description;
  /// A list of authorization HTTP rules to match against the incoming request.A policy match occurs when at least one HTTP rule matches the request or when no HTTP rules are specified in the policy. At least one HTTP Rule is required for Allow or Deny Action.
  /// Limited to 5 rules.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyHttpRule>?>? httpRules;
  /// Set of labels associated with the AuthzExtension resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// Identifier. Name of the AuthzPolicy resource.
  final pulumi.Input<String?>? name;
  /// A list of authorization HTTP rules to match against the incoming request.A policy match occurs when at least one HTTP rule matches the request or when no HTTP rules are specified in the policy. At least one HTTP Rule is required for Allow or Deny Action.
  /// Limited to 5 rules.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyNetworkRule>?>? networkRules;
  /// Defines the type of authorization being performed. `REQUEST_AUTHZ` applies to request authorization. CUSTOM
  /// authorization policies with Authz extensions will be allowed with extAuthz or extProc protocols. Extensions are
  /// invoked only once when the request headers arrive. `CONTENT_AUTHZ` applies to content security, sanitization, etc.
  /// Only CUSTOM action is allowed in this policy profile. AuthzExtensions in the custom provider must support extProc
  /// protocol and be capable of receiving all extProc events (REQUEST_HEADERS, REQUEST_BODY, REQUEST_TRAILERS,
  /// RESPONSE_HEADERS, RESPONSE_BODY, RESPONSE_TRAILERS) with FULL_DUPLEX_STREAMED body send mode.
  /// Possible values are: `REQUEST_AUTHZ`, `CONTENT_AUTHZ`.
  final pulumi.Input<String?>? policyProfile;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Specifies the set of resources to which this policy should be applied to.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyTarget> target;

  /// Creates a new [AuthzPolicyArgs].
  /// [action] When the action is CUSTOM, customProvider must be specified.
  /// [customProvider] Required if the action is CUSTOM. Allows delegating authorization decisions to Cloud IAP or to Service Extensions. One of cloudIap or authzExtension must be specified.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A human-readable description of the resource.
  /// [httpRules] A list of authorization HTTP rules to match against the incoming request.A policy match occurs when at least one HTTP rule matches the request or when no HTTP rules are specified in the policy. At least one HTTP Rule is required for Allow or Deny Action.
  /// [labels] Set of labels associated with the AuthzExtension resource.
  /// [location] The location of the resource.
  /// [name] Identifier. Name of the AuthzPolicy resource.
  /// [networkRules] A list of authorization HTTP rules to match against the incoming request.A policy match occurs when at least one HTTP rule matches the request or when no HTTP rules are specified in the policy. At least one HTTP Rule is required for Allow or Deny Action.
  /// [policyProfile] Defines the type of authorization being performed. `REQUEST_AUTHZ` applies to request authorization. CUSTOM
  /// [project] The ID of the project in which the resource belongs.
  /// [target] Specifies the set of resources to which this policy should be applied to.
  const AuthzPolicyArgs({
    required this.action,
    this.customProvider,
    this.deletionPolicy,
    this.description,
    this.httpRules,
    this.labels,
    required this.location,
    this.name,
    this.networkRules,
    this.policyProfile,
    this.project,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'customProvider': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyCustomProvider, Map<String, dynamic>>(customProvider, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'httpRules': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyHttpRule>, List<Map<String, dynamic>>>(httpRules, (value) => pulumi.Input.encodeList<AuthzPolicyHttpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'networkRules': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyNetworkRule>, List<Map<String, dynamic>>>(networkRules, (value) => pulumi.Input.encodeList<AuthzPolicyNetworkRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyProfile': ?policyProfile,
      'project': ?project,
      'target': pulumi.Input.mapInputValue<AuthzPolicyTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory AuthzPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyArgs(
      action: pulumi.Input.fromValue(map['action'] as String),
      customProvider: (() { final guardedValue = map['customProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthzPolicyCustomProvider.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpRules: (() { final guardedValue = map['httpRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyHttpRule>(guardedValue, (value) => AuthzPolicyHttpRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkRules: (() { final guardedValue = map['networkRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyNetworkRule>(guardedValue, (value) => AuthzPolicyNetworkRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policyProfile: (() { final guardedValue = map['policyProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: pulumi.Input.fromValue(AuthzPolicyTarget.fromMap((map['target']! as Map).cast<String, dynamic>())),
    );
  }
}
