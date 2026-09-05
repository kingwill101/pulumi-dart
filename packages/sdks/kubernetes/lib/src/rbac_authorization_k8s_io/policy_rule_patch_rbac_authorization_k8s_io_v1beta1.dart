// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PolicyRule holds information that describes a policy rule, but does not contain information about who the rule applies to or which namespace the rule applies to.
class PolicyRulePatchRbacAuthorizationK8sIoV1beta1 {
  /// APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.
  final pulumi.Input<List<String>?>? apiGroups;
  /// NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as "pods" or "secrets") or non-resource URL paths (such as "/api"),  but not both.
  final pulumi.Input<List<String>?>? nonResourceURLs;
  /// ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
  final pulumi.Input<List<String>?>? resourceNames;
  /// Resources is a list of resources this rule applies to.  '*' represents all resources in the specified apiGroups. '*/foo' represents the subresource 'foo' for all resources in the specified apiGroups.
  final pulumi.Input<List<String>?>? resources;
  /// Verbs is a list of Verbs that apply to ALL the ResourceKinds and AttributeRestrictions contained in this rule.  VerbAll represents all kinds.
  final pulumi.Input<List<String>?>? verbs;

  /// Creates a new [PolicyRulePatchRbacAuthorizationK8sIoV1beta1].
  /// [apiGroups] APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.
  /// [nonResourceURLs] NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as "pods" or "secrets") or non-resource URL paths (such as "/api"),  but not both.
  /// [resourceNames] ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
  /// [resources] Resources is a list of resources this rule applies to.  '*' represents all resources in the specified apiGroups. '*/foo' represents the subresource 'foo' for all resources in the specified apiGroups.
  /// [verbs] Verbs is a list of Verbs that apply to ALL the ResourceKinds and AttributeRestrictions contained in this rule.  VerbAll represents all kinds.
  const PolicyRulePatchRbacAuthorizationK8sIoV1beta1({
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

  factory PolicyRulePatchRbacAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return PolicyRulePatchRbacAuthorizationK8sIoV1beta1(
      apiGroups: (() { final guardedValue = map['apiGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nonResourceURLs: (() { final guardedValue = map['nonResourceURLs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceNames: (() { final guardedValue = map['resourceNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      verbs: (() { final guardedValue = map['verbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
