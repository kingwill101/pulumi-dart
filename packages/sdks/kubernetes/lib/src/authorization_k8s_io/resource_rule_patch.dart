// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceRule is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
class ResourceRulePatch {
  /// APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  "*" means all.
  final pulumi.Input<List<String>>? apiGroups;
  /// ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  "*" means all.
  final pulumi.Input<List<String>>? resourceNames;
  /// Resources is a list of resources this rule applies to.  "*" means all in the specified apiGroups.
  /// "*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.
  final pulumi.Input<List<String>>? resources;
  /// Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  "*" means all.
  final pulumi.Input<List<String>>? verbs;

  /// Creates a new [ResourceRulePatch].
  /// [apiGroups] APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  "*" means all.
  /// [resourceNames] ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  "*" means all.
  /// [resources] Resources is a list of resources this rule applies to.  "*" means all in the specified apiGroups.
  /// [verbs] Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  "*" means all.
  ResourceRulePatch({
    this.apiGroups,
    this.resourceNames,
    this.resources,
    this.verbs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGroups': ?apiGroups,
      'resourceNames': ?resourceNames,
      'resources': ?resources,
      'verbs': ?verbs,
    };
  }

  factory ResourceRulePatch.fromMap(Map<String, dynamic> map) {
    return ResourceRulePatch(
      apiGroups: map['apiGroups'] == null ? null : ((map['apiGroups'] as List).cast<String>()).input(),
      resourceNames: map['resourceNames'] == null ? null : ((map['resourceNames'] as List).cast<String>()).input(),
      resources: map['resources'] == null ? null : ((map['resources'] as List).cast<String>()).input(),
      verbs: map['verbs'] == null ? null : ((map['verbs'] as List).cast<String>()).input(),
    );
  }
}

