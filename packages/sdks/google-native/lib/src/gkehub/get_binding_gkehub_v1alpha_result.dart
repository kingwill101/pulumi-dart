// ignore_for_file: unused_element, unnecessary_cast

import 'membership_binding_lifecycle_state_response_gkehub_v1alpha.dart';

/// Result data returned by getBinding.
class GetBindingGkehubV1alphaResult {
  /// When the membership binding was created.
  final String? createTime;
  /// When the membership binding was deleted.
  final String? deleteTime;
  /// Optional. Labels for this MembershipBinding.
  final Map<String, String>? labels;
  /// The resource name for the membershipbinding itself `projects/{project}/locations/{location}/memberships/{membership}/bindings/{membershipbinding}`
  final String? name;
  /// A Scope resource name in the format `projects/*/locations/*/scopes/*`.
  final String? scope;
  /// State of the membership binding resource.
  final MembershipBindingLifecycleStateResponseGkehubV1alpha? state;
  /// Google-generated UUID for this resource. This is unique across all membershipbinding resources. If a membershipbinding resource is deleted and another resource with the same name is created, it gets a different uid.
  final String? uid;
  /// When the membership binding was last updated.
  final String? updateTime;

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
    this.createTime,
    this.deleteTime,
    this.labels,
    this.name,
    this.scope,
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
      'scope': ?scope,
      'state': ?state?.toMap(),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetBindingGkehubV1alphaResult.fromMap(Map<String, dynamic> map) {
    return GetBindingGkehubV1alphaResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return MembershipBindingLifecycleStateResponseGkehubV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
