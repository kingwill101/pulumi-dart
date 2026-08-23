// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceRule is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
class ResourceRule {
  /// apiGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  "*" means all.
  final pulumi.Input<List<String>>? apiGroups;
  /// resourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  "*" means all.
  final pulumi.Input<List<String>>? resourceNames;
  /// resources is a list of resources this rule applies to.  "*" means all in the specified apiGroups.
  /// "*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.
  final pulumi.Input<List<String>>? resources;
  /// verbs is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  "*" means all.
  final pulumi.Input<List<String>> verbs;

  /// Creates a new [ResourceRule].
  /// [apiGroups] apiGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  "*" means all.
  /// [resourceNames] resourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  "*" means all.
  /// [resources] resources is a list of resources this rule applies to.  "*" means all in the specified apiGroups.
  /// [verbs] verbs is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  "*" means all.
  const ResourceRule({
    this.apiGroups,
    this.resourceNames,
    this.resources,
    required this.verbs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGroups': ?apiGroups,
      'resourceNames': ?resourceNames,
      'resources': ?resources,
      'verbs': verbs,
    };
  }

  factory ResourceRule.fromMap(Map<String, dynamic> map) {
    return ResourceRule(
      apiGroups: (() { final guardedValue = map['apiGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceNames: (() { final guardedValue = map['resourceNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      verbs: pulumi.Input.fromValue((map['verbs'] as List).cast<String>()),
    );
  }
}
