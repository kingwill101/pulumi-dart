// ignore_for_file: unused_element, unnecessary_cast

import 'membership_binding_lifecycle_state_response_gkehub_v1alpha.dart';

/// Result data returned by getBinding.
class GetBindingGkehubV1alphaResult {
  /// When the membership binding was created.
  final String createTime;
  /// When the membership binding was deleted.
  final String deleteTime;
  /// Optional. Labels for this MembershipBinding.
  final Map<String, String> labels;
  /// The resource name for the membershipbinding itself `projects/{project}/locations/{location}/memberships/{membership}/bindings/{membershipbinding}`
  final String name;
  /// A Scope resource name in the format `projects/*/locations/*/scopes/*`.
  final String scope;
  /// State of the membership binding resource.
  final MembershipBindingLifecycleStateResponseGkehubV1alpha state;
  /// Google-generated UUID for this resource. This is unique across all membershipbinding resources. If a membershipbinding resource is deleted and another resource with the same name is created, it gets a different uid.
  final String uid;
  /// When the membership binding was last updated.
  final String updateTime;

  /// Creates a new [GetBindingGkehubV1alphaResult].
  /// [createTime] When the membership binding was created.
  /// [deleteTime] When the membership binding was deleted.
  /// [labels] Optional. Labels for this MembershipBinding.
  /// [name] The resource name for the membershipbinding itself `projects/{project}/locations/{location}/memberships/{membership}/bindings/{membershipbinding}`
  /// [scope] A Scope resource name in the format `projects/*/locations/*/scopes/*`.
  /// [state] State of the membership binding resource.
  /// [uid] Google-generated UUID for this resource. This is unique across all membershipbinding resources. If a membershipbinding resource is deleted and another resource with the same name is created, it gets a different uid.
  /// [updateTime] When the membership binding was last updated.
  const GetBindingGkehubV1alphaResult({
    required this.createTime,
    required this.deleteTime,
    required this.labels,
    required this.name,
    required this.scope,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deleteTime': deleteTime,
      'labels': labels,
      'name': name,
      'scope': scope,
      'state': state.toMap(),
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetBindingGkehubV1alphaResult.fromMap(Map<String, dynamic> map) {
    return GetBindingGkehubV1alphaResult(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      scope: map['scope'] as String,
      state: MembershipBindingLifecycleStateResponseGkehubV1alpha.fromMap((map['state']! as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

