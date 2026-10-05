// ignore_for_file: unused_element, unnecessary_cast

import 'scope_lifecycle_state_response_gkehub_v1alpha.dart';

/// Result data returned by getScope.
class GetScopeGkehubV1alphaResult {
  /// When the scope was created.
  final String? createTime;
  /// When the scope was deleted.
  final String? deleteTime;
  /// Optional. Labels for this Scope.
  final Map<String, String>? labels;
  /// The resource name for the scope `projects/{project}/locations/{location}/scopes/{scope}`
  final String? name;
  /// Optional. Scope-level cluster namespace labels. For the member clusters bound to the Scope, these labels are applied to each namespace under the Scope. Scope-level labels take precedence over Namespace-level labels (`namespace_labels` in the Fleet Namespace resource) if they share a key. Keys and values must be Kubernetes-conformant.
  final Map<String, String>? namespaceLabels;
  /// State of the scope resource.
  final ScopeLifecycleStateResponseGkehubV1alpha? state;
  /// Google-generated UUID for this resource. This is unique across all scope resources. If a scope resource is deleted and another resource with the same name is created, it gets a different uid.
  final String? uid;
  /// When the scope was last updated.
  final String? updateTime;

  /// Creates a new [GetScopeGkehubV1alphaResult].
  /// [createTime] When the scope was created.
  /// [deleteTime] When the scope was deleted.
  /// [labels] Optional. Labels for this Scope.
  /// [name] The resource name for the scope `projects/{project}/locations/{location}/scopes/{scope}`
  /// [namespaceLabels] Optional. Scope-level cluster namespace labels. For the member clusters bound to the Scope, these labels are applied to each namespace under the Scope. Scope-level labels take precedence over Namespace-level labels (`namespace_labels` in the Fleet Namespace resource) if they share a key. Keys and values must be Kubernetes-conformant.
  /// [state] State of the scope resource.
  /// [uid] Google-generated UUID for this resource. This is unique across all scope resources. If a scope resource is deleted and another resource with the same name is created, it gets a different uid.
  /// [updateTime] When the scope was last updated.
  const GetScopeGkehubV1alphaResult({
    this.createTime,
    this.deleteTime,
    this.labels,
    this.name,
    this.namespaceLabels,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'labels': ?labels,
      'name': ?name,
      'namespaceLabels': ?namespaceLabels,
      'state': ?state?.toMap(),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetScopeGkehubV1alphaResult.fromMap(Map<String, dynamic> map) {
    return GetScopeGkehubV1alphaResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceLabels: (() { final guardedValue = map['namespaceLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return ScopeLifecycleStateResponseGkehubV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
