// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_custom_provider.dart';
import 'authz_policy_http_rule.dart';
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
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// Identifier. Name of the AuthzPolicy resource.
  final pulumi.Input<String>? name;
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
  /// [description] A human-readable description of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [httpRules] A list of authorization HTTP rules to match against the incoming request.A policy match occurs when at least one HTTP rule matches the request or when no HTTP rules are specified in the policy. At least one HTTP Rule is required for Allow or Deny Action.
  /// [labels] Set of labels associated with the AuthzExtension resource.
  /// [location] The location of the resource.
  /// [name] Identifier. Name of the AuthzPolicy resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [target] Specifies the set of resources to which this policy should be applied to.
  /// [updateTime] The timestamp when the resource was updated.
  AuthzPolicyState({
    this.action,
    this.createTime,
    this.customProvider,
    this.description,
    this.effectiveLabels,
    this.httpRules,
    this.labels,
    this.location,
    this.name,
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
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'httpRules': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyHttpRule>, List<Map<String, dynamic>>>(httpRules, (value) => pulumi.Input.encodeList<AuthzPolicyHttpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'target': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory AuthzPolicyState.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyState(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      customProvider: map['customProvider'] == null ? null : (AuthzPolicyCustomProvider.fromMap((map['customProvider']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      httpRules: map['httpRules'] == null ? null : (pulumi.Input.decodeList<AuthzPolicyHttpRule>(map['httpRules']!, (value) => AuthzPolicyHttpRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      target: map['target'] == null ? null : (AuthzPolicyTarget.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

