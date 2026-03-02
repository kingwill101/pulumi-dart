// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RuleWithOperations is a tuple of Operations and Resources. It is recommended to make sure that all the tuple expansions are valid.
class RuleWithOperationsAdmissionregistrationK8sIoV1beta1 {
  /// APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required.
  final pulumi.Input<List<String>>? apiGroups;
  /// APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required.
  final pulumi.Input<List<String>>? apiVersions;
  /// Operations is the operations the admission hook cares about - CREATE, UPDATE, or * for all operations. If '*' is present, the length of the slice must be one. Required.
  final pulumi.Input<List<String>>? operations;
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

  /// Creates a new [RuleWithOperationsAdmissionregistrationK8sIoV1beta1].
  /// [apiGroups] APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required.
  /// [apiVersions] APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required.
  /// [operations] Operations is the operations the admission hook cares about - CREATE, UPDATE, or * for all operations. If '*' is present, the length of the slice must be one. Required.
  /// [resources] Resources is a list of resources this rule applies to.
  /// [scope] scope specifies the scope of this rule. Valid values are "Cluster", "Namespaced", and "*" "Cluster" means that only cluster-scoped resources will match this rule. Namespace API objects are cluster-scoped. "Namespaced" means that only namespaced resources will match this rule. "*" means that there are no scope restrictions. Subresources match the scope of their parent resource. Default is "*".
  RuleWithOperationsAdmissionregistrationK8sIoV1beta1({
    this.apiGroups,
    this.apiVersions,
    this.operations,
    this.resources,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGroups': ?apiGroups,
      'apiVersions': ?apiVersions,
      'operations': ?operations,
      'resources': ?resources,
      'scope': ?scope,
    };
  }

  factory RuleWithOperationsAdmissionregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return RuleWithOperationsAdmissionregistrationK8sIoV1beta1(
      apiGroups: map['apiGroups'] == null ? null : ((map['apiGroups']! as List).cast<String>()).input(),
      apiVersions: map['apiVersions'] == null ? null : ((map['apiVersions']! as List).cast<String>()).input(),
      operations: map['operations'] == null ? null : ((map['operations']! as List).cast<String>()).input(),
      resources: map['resources'] == null ? null : ((map['resources']! as List).cast<String>()).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
    );
  }
}

