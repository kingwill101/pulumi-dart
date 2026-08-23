// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_custom_provider.dart';
import 'authz_policy_http_rule.dart';
import 'authz_policy_network_rule.dart';
import 'authz_policy_target.dart';

/// Input properties used for looking up and filtering AuthzPolicy resources.
class AuthzPolicyState {
  /// When the action is CUSTOM, customProvider must be specified.
  /// When the action is ALLOW, only requests matching the policy will be allowed.
  /// When the action is DENY, only requests matching the policy will be denied.
  /// When a request arrives, the policies are evaluated in the following order:
  /// 1. If there is a CUSTOM policy that matches the request, the CUSTOM policy is evaluated using the custom authorization providers and the request is denied if the provider rejects the request.
  /// 2. If there are any DENY policies that match the request, the request is denied.
  /// 3. If there are no ALLOW policies for the resource or if any of the ALLOW policies match the request, the request is allowed.
  /// 4. Else the request is denied by default if none of the configured AuthzPolicies with ALLOW action match the request.
  /// Possible values are: `ALLOW`, `DENY`, `CUSTOM`.
  final pulumi.Input<String>? action;
  /// The timestamp when the resource was created.
  final pulumi.Input<String>? createTime;
  /// Required if the action is CUSTOM. Allows delegating authorization decisions to Cloud IAP or to Service Extensions. One of cloudIap or authzExtension must be specified.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyCustomProvider>? customProvider;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// A list of authorization HTTP rules to match against the incoming request.A policy match occurs when at least one HTTP rule matches the request or when no HTTP rules are specified in the policy. At least one HTTP Rule is required for Allow or Deny Action.
  /// Limited to 5 rules.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyHttpRule>>? httpRules;
  /// Set of labels associated with the AuthzExtension resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// Identifier. Name of the AuthzPolicy resource.
  final pulumi.Input<String>? name;
  /// A list of authorization HTTP rules to match against the incoming request.A policy match occurs when at least one HTTP rule matches the request or when no HTTP rules are specified in the policy. At least one HTTP Rule is required for Allow or Deny Action.
  /// Limited to 5 rules.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyNetworkRule>>? networkRules;
  /// Defines the type of authorization being performed. `REQUEST_AUTHZ` applies to request authorization. CUSTOM
  /// authorization policies with Authz extensions will be allowed with extAuthz or extProc protocols. Extensions are
  /// invoked only once when the request headers arrive. `CONTENT_AUTHZ` applies to content security, sanitization, etc.
  /// Only CUSTOM action is allowed in this policy profile. AuthzExtensions in the custom provider must support extProc
  /// protocol and be capable of receiving all extProc events (REQUEST_HEADERS, REQUEST_BODY, REQUEST_TRAILERS,
  /// RESPONSE_HEADERS, RESPONSE_BODY, RESPONSE_TRAILERS) with FULL_DUPLEX_STREAMED body send mode.
  /// Possible values are: `REQUEST_AUTHZ`, `CONTENT_AUTHZ`.
  final pulumi.Input<String>? policyProfile;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Specifies the set of resources to which this policy should be applied to.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyTarget>? target;
  /// The timestamp when the resource was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AuthzPolicyState].
  /// [action] When the action is CUSTOM, customProvider must be specified.
  /// [createTime] The timestamp when the resource was created.
  /// [customProvider] Required if the action is CUSTOM. Allows delegating authorization decisions to Cloud IAP or to Service Extensions. One of cloudIap or authzExtension must be specified.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A human-readable description of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [httpRules] A list of authorization HTTP rules to match against the incoming request.A policy match occurs when at least one HTTP rule matches the request or when no HTTP rules are specified in the policy. At least one HTTP Rule is required for Allow or Deny Action.
  /// [labels] Set of labels associated with the AuthzExtension resource.
  /// [location] The location of the resource.
  /// [name] Identifier. Name of the AuthzPolicy resource.
  /// [networkRules] A list of authorization HTTP rules to match against the incoming request.A policy match occurs when at least one HTTP rule matches the request or when no HTTP rules are specified in the policy. At least one HTTP Rule is required for Allow or Deny Action.
  /// [policyProfile] Defines the type of authorization being performed. `REQUEST_AUTHZ` applies to request authorization. CUSTOM
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [target] Specifies the set of resources to which this policy should be applied to.
  /// [updateTime] The timestamp when the resource was updated.
  const AuthzPolicyState({
    this.action,
    this.createTime,
    this.customProvider,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.httpRules,
    this.labels,
    this.location,
    this.name,
    this.networkRules,
    this.policyProfile,
    this.project,
    this.pulumiLabels,
    this.target,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'createTime': ?createTime,
      'customProvider': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyCustomProvider, Map<String, dynamic>>(customProvider, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'httpRules': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyHttpRule>, List<Map<String, dynamic>>>(httpRules, (value) => pulumi.Input.encodeList<AuthzPolicyHttpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'networkRules': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyNetworkRule>, List<Map<String, dynamic>>>(networkRules, (value) => pulumi.Input.encodeList<AuthzPolicyNetworkRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyProfile': ?policyProfile,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'target': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory AuthzPolicyState.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyState(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customProvider: (() { final guardedValue = map['customProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthzPolicyCustomProvider.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      httpRules: (() { final guardedValue = map['httpRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyHttpRule>(guardedValue, (value) => AuthzPolicyHttpRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkRules: (() { final guardedValue = map['networkRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyNetworkRule>(guardedValue, (value) => AuthzPolicyNetworkRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policyProfile: (() { final guardedValue = map['policyProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthzPolicyTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
