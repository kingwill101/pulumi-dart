// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NamedRuleWithOperations is a tuple of Operations and Resources with ResourceNames.
class NamedRuleWithOperationsPatchAdmissionregistrationK8sIoV1beta1 {
  /// APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required.
  final pulumi.Input<List<String>>? apiGroups;
  /// APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required.
  final pulumi.Input<List<String>>? apiVersions;
  /// Operations is the operations the admission hook cares about - CREATE, UPDATE, DELETE, CONNECT or * for all of those operations and any future admission operations that are added. If '*' is present, the length of the slice must be one. Required.
  final pulumi.Input<List<String>>? operations;
  /// ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
  final pulumi.Input<List<String>>? resourceNames;
  /// Resources is a list of resources this rule applies to.
  ///
  /// For example: 'pods' means pods. 'pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.
  ///
  /// If wildcard is present, the validation rule will ensure resources do not overlap with each other.
  ///
  /// Depending on the enclosing object, subresources might not be allowed. Required.
  final pulumi.Input<List<String>>? resources;
  /// scope specifies the scope of this rule. Valid values are "Cluster", "Namespaced", and "*" "Cluster" means that only cluster-scoped resources will match this rule. Namespace API objects are cluster-scoped. "Namespaced" means that only namespaced resources will match this rule. "*" means that there are no scope restrictions. Subresources match the scope of their parent resource. Default is "*".
  final pulumi.Input<String>? scope;

  /// Creates a new [NamedRuleWithOperationsPatchAdmissionregistrationK8sIoV1beta1].
  /// [apiGroups] APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required.
  /// [apiVersions] APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required.
  /// [operations] Operations is the operations the admission hook cares about - CREATE, UPDATE, DELETE, CONNECT or * for all of those operations and any future admission operations that are added. If '*' is present, the length of the slice must be one. Required.
  /// [resourceNames] ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
  /// [resources] Resources is a list of resources this rule applies to.
  /// [scope] scope specifies the scope of this rule. Valid values are "Cluster", "Namespaced", and "*" "Cluster" means that only cluster-scoped resources will match this rule. Namespace API objects are cluster-scoped. "Namespaced" means that only namespaced resources will match this rule. "*" means that there are no scope restrictions. Subresources match the scope of their parent resource. Default is "*".
  NamedRuleWithOperationsPatchAdmissionregistrationK8sIoV1beta1({
    this.apiGroups,
    this.apiVersions,
    this.operations,
    this.resourceNames,
    this.resources,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGroups': ?apiGroups,
      'apiVersions': ?apiVersions,
      'operations': ?operations,
      'resourceNames': ?resourceNames,
      'resources': ?resources,
      'scope': ?scope,
    };
  }

  factory NamedRuleWithOperationsPatchAdmissionregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return NamedRuleWithOperationsPatchAdmissionregistrationK8sIoV1beta1(
      apiGroups: (() { final guardedValue = map['apiGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      apiVersions: (() { final guardedValue = map['apiVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      operations: (() { final guardedValue = map['operations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceNames: (() { final guardedValue = map['resourceNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

