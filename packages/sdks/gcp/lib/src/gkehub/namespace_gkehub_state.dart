// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_state.dart';

/// Input properties used for looking up and filtering Namespace resources.
class NamespaceGkehubState {
  /// Time the Namespace was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Time the Namespace was deleted in UTC.
  final pulumi.Input<String>? deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels for this Namespace.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The resource name for the namespace
  final pulumi.Input<String>? name;
  /// Namespace-level cluster namespace labels. These labels are applied
  /// to the related namespace of the member clusters bound to the parent
  /// Scope. Scope-level labels (`namespaceLabels` in the Fleet Scope
  /// resource) take precedence over Namespace-level labels if they share
  /// a key. Keys and values must be Kubernetes-conformant.
  final pulumi.Input<Map<String, String>>? namespaceLabels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The name of the Scope instance.
  final pulumi.Input<String>? scope;
  /// Id of the scope
  final pulumi.Input<String>? scopeId;
  /// The client-provided identifier of the namespace.
  final pulumi.Input<String>? scopeNamespaceId;
  /// State of the namespace resource.
  /// Structure is documented below.
  final pulumi.Input<List<NamespaceState>>? states;
  /// Google-generated UUID for this resource.
  final pulumi.Input<String>? uid;
  /// Time the Namespace was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [NamespaceGkehubState].
  /// [createTime] Time the Namespace was created in UTC.
  /// [deleteTime] Time the Namespace was deleted in UTC.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels for this Namespace.
  /// [name] The resource name for the namespace
  /// [namespaceLabels] Namespace-level cluster namespace labels. These labels are applied
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [scope] The name of the Scope instance.
  /// [scopeId] Id of the scope
  /// [scopeNamespaceId] The client-provided identifier of the namespace.
  /// [states] State of the namespace resource.
  /// [uid] Google-generated UUID for this resource.
  /// [updateTime] Time the Namespace was updated in UTC.
  const NamespaceGkehubState({
    this.createTime,
    this.deleteTime,
    this.deletionPolicy,
    this.effectiveLabels,
    this.labels,
    this.name,
    this.namespaceLabels,
    this.project,
    this.pulumiLabels,
    this.scope,
    this.scopeId,
    this.scopeNamespaceId,
    this.states,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'name': ?name,
      'namespaceLabels': ?namespaceLabels,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'scope': ?scope,
      'scopeId': ?scopeId,
      'scopeNamespaceId': ?scopeNamespaceId,
      'states': ?pulumi.Input.mapOptionalInputValue<List<NamespaceState>, List<Map<String, dynamic>>>(states, (value) => pulumi.Input.encodeList<NamespaceState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory NamespaceGkehubState.fromMap(Map<String, dynamic> map) {
    return NamespaceGkehubState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceLabels: (() { final guardedValue = map['namespaceLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeId: (() { final guardedValue = map['scopeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeNamespaceId: (() { final guardedValue = map['scopeNamespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      states: (() { final guardedValue = map['states']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespaceState>(guardedValue, (value) => NamespaceState.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
