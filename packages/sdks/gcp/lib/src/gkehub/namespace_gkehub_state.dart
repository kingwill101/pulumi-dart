// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_state.dart';

/// Input properties used for looking up and filtering Namespace resources.
class NamespaceGkehubState {
  /// Time the Namespace was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Time the Namespace was deleted in UTC.
  final pulumi.Input<String>? deleteTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels for this Namespace.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The resource name for the namespace
  final pulumi.Input<String>? name;
  /// Namespace-level cluster namespace labels. These labels are applied
  /// to the related namespace of the member clusters bound to the parent
  /// Scope. Scope-level labels (`namespace_labels` in the Fleet Scope
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
  NamespaceGkehubState({
    this.createTime,
    this.deleteTime,
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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      deleteTime: map['deleteTime'] == null ? null : (map['deleteTime']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespaceLabels: map['namespaceLabels'] == null ? null : ((map['namespaceLabels']! as Map).cast<String, String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      scopeId: map['scopeId'] == null ? null : (map['scopeId']! as String).input(),
      scopeNamespaceId: map['scopeNamespaceId'] == null ? null : (map['scopeNamespaceId']! as String).input(),
      states: map['states'] == null ? null : (pulumi.Input.decodeList<NamespaceState>(map['states']!, (value) => NamespaceState.fromMap((value as Map).cast<String, dynamic>()))).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

