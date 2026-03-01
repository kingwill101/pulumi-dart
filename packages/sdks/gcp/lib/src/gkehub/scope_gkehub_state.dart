// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_state.dart';

/// Input properties used for looking up and filtering Scope resources.
class ScopeGkehubState {
  /// Time the Scope was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Time the Scope was deleted in UTC.
  final pulumi.Input<String>? deleteTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels for this Scope.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The unique identifier of the scope
  final pulumi.Input<String>? name;
  /// Scope-level cluster namespace labels. For the member clusters bound
  /// to the Scope, these labels are applied to each namespace under the
  /// Scope. Scope-level labels take precedence over Namespace-level
  /// labels (`namespace_labels` in the Fleet Namespace resource) if they
  /// share a key. Keys and values must be Kubernetes-conformant.
  final pulumi.Input<Map<String, String>>? namespaceLabels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The client-provided identifier of the scope.
  final pulumi.Input<String>? scopeId;
  /// State of the scope resource.
  /// Structure is documented below.
  final pulumi.Input<List<ScopeState>>? states;
  /// Google-generated UUID for this resource.
  final pulumi.Input<String>? uid;
  /// Time the Scope was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ScopeGkehubState].
  /// [createTime] Time the Scope was created in UTC.
  /// [deleteTime] Time the Scope was deleted in UTC.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels for this Scope.
  /// [name] The unique identifier of the scope
  /// [namespaceLabels] Scope-level cluster namespace labels. For the member clusters bound
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [scopeId] The client-provided identifier of the scope.
  /// [states] State of the scope resource.
  /// [uid] Google-generated UUID for this resource.
  /// [updateTime] Time the Scope was updated in UTC.
  ScopeGkehubState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? namespaceLabels,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? scopeId,
    pulumi.Output<List<ScopeState>>? states,
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
      scopeId = pulumi.Input.asOptionalInput<String>(scopeId),
      states = pulumi.Input.asOptionalInput<List<ScopeState>>(states),
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
      'scopeId': ?scopeId,
      'states': ?pulumi.Input.mapOptionalInputValue<List<ScopeState>, List<Map<String, dynamic>>>(states, (value) => pulumi.Input.encodeList<ScopeState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory ScopeGkehubState.fromMap(Map<String, dynamic> map) {
    return ScopeGkehubState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceLabels: map['namespaceLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['namespaceLabels'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      scopeId: map['scopeId'] == null ? null : pulumi.Output.create<String>(map['scopeId'] as String),
      states: map['states'] == null ? null : pulumi.Output.create<List<ScopeState>>(pulumi.Input.decodeList<ScopeState>(map['states'], (value) => ScopeState.fromMap((value as Map).cast<String, dynamic>()))),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

