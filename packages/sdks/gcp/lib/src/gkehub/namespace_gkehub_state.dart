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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? namespaceLabels,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? scope,
    pulumi.Output<String>? scopeId,
    pulumi.Output<String>? scopeNamespaceId,
    pulumi.Output<List<NamespaceState>>? states,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceLabels = pulumi.Input.asOptionalInput<Map<String, String>>(namespaceLabels),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      scopeId = pulumi.Input.asOptionalInput<String>(scopeId),
      scopeNamespaceId = pulumi.Input.asOptionalInput<String>(scopeNamespaceId),
      states = pulumi.Input.asOptionalInput<List<NamespaceState>>(states),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceLabels: map['namespaceLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['namespaceLabels'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      scopeId: map['scopeId'] == null ? null : pulumi.Output.create<String>(map['scopeId'] as String),
      scopeNamespaceId: map['scopeNamespaceId'] == null ? null : pulumi.Output.create<String>(map['scopeNamespaceId'] as String),
      states: map['states'] == null ? null : pulumi.Output.create<List<NamespaceState>>(pulumi.Input.decodeList<NamespaceState>(map['states'], (value) => NamespaceState.fromMap((value as Map).cast<String, dynamic>()))),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

