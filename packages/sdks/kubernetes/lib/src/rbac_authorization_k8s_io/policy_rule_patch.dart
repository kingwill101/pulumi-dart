// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PolicyRule holds information that describes a policy rule, but does not contain information about who the rule applies to or which namespace the rule applies to.
class PolicyRulePatch {
  /// APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed. "" represents the core API group and "*" represents all API groups.
  final pulumi.Input<List<String>>? apiGroups;
  /// NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as "pods" or "secrets") or non-resource URL paths (such as "/api"),  but not both.
  final pulumi.Input<List<String>>? nonResourceURLs;
  /// ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
  final pulumi.Input<List<String>>? resourceNames;
  /// Resources is a list of resources this rule applies to. '*' represents all resources.
  final pulumi.Input<List<String>>? resources;
  /// Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*' represents all verbs.
  final pulumi.Input<List<String>>? verbs;

  /// Creates a new [PolicyRulePatch].
  /// [apiGroups] APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed. "" represents the core API group and "*" represents all API groups.
  /// [nonResourceURLs] NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as "pods" or "secrets") or non-resource URL paths (such as "/api"),  but not both.
  /// [resourceNames] ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
  /// [resources] Resources is a list of resources this rule applies to. '*' represents all resources.
  /// [verbs] Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*' represents all verbs.
  PolicyRulePatch({
    this.apiGroups,
    this.nonResourceURLs,
    this.resourceNames,
    this.resources,
    this.verbs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGroups': ?apiGroups,
      'nonResourceURLs': ?nonResourceURLs,
      'resourceNames': ?resourceNames,
      'resources': ?resources,
      'verbs': ?verbs,
    };
  }

  factory PolicyRulePatch.fromMap(Map<String, dynamic> map) {
    return PolicyRulePatch(
      apiGroups: map['apiGroups'] == null ? null : ((map['apiGroups'] as List).cast<String>()).input(),
      nonResourceURLs: map['nonResourceURLs'] == null ? null : ((map['nonResourceURLs'] as List).cast<String>()).input(),
      resourceNames: map['resourceNames'] == null ? null : ((map['resourceNames'] as List).cast<String>()).input(),
      resources: map['resources'] == null ? null : ((map['resources'] as List).cast<String>()).input(),
      verbs: map['verbs'] == null ? null : ((map['verbs'] as List).cast<String>()).input(),
    );
  }
}

