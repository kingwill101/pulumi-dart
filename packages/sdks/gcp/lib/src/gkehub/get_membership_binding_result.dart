// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_membership_binding_state.dart';

/// Result data returned by getMembershipBinding.
class GetMembershipBindingResult {
  final String? createTime;
  final String? deleteTime;
  final String? deletionPolicy;
  final Map<String, String>? effectiveLabels;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? location;
  final String? membershipBindingId;
  final String? membershipId;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? scope;
  final List<GetMembershipBindingState>? states;
  final String? uid;
  final String? updateTime;

  /// Creates a new [GetMembershipBindingResult].
  /// [createTime] Optional.
  /// [deleteTime] Optional.
  /// [deletionPolicy] Optional.
  /// [effectiveLabels] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [location] Optional.
  /// [membershipBindingId] Optional.
  /// [membershipId] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [scope] Optional.
  /// [states] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  const GetMembershipBindingResult({
    this.createTime,
    this.deleteTime,
    this.deletionPolicy,
    this.effectiveLabels,
    this.id,
    this.labels,
    this.location,
    this.membershipBindingId,
    this.membershipId,
    this.name,
    this.project,
    this.pulumiLabels,
    this.scope,
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
      'id': ?id,
      'labels': ?labels,
      'location': ?location,
      'membershipBindingId': ?membershipBindingId,
      'membershipId': ?membershipId,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'scope': ?scope,
      'states': ?(() { final guardedValue = states; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMembershipBindingState, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetMembershipBindingResult.fromMap(Map<String, dynamic> map) {
    return GetMembershipBindingResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      membershipBindingId: (() { final guardedValue = map['membershipBindingId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      membershipId: (() { final guardedValue = map['membershipId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      states: (() { final guardedValue = map['states']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMembershipBindingState>(guardedValue, (value) => GetMembershipBindingState.fromMap((value as Map).cast<String, dynamic>())); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
