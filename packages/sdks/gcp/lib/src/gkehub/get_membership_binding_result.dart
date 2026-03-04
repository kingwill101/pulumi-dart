// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_membership_binding_state.dart';

/// Result data returned by getMembershipBinding.
class GetMembershipBindingResult {
  final String createTime;
  final String deleteTime;
  final Map<String, String> effectiveLabels;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String location;
  final String membershipBindingId;
  final String membershipId;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String scope;
  final List<GetMembershipBindingState> states;
  final String uid;
  final String updateTime;

  /// Creates a new [GetMembershipBindingResult].
  /// [createTime] Required.
  /// [deleteTime] Required.
  /// [effectiveLabels] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [location] Required.
  /// [membershipBindingId] Required.
  /// [membershipId] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [scope] Required.
  /// [states] Required.
  /// [uid] Required.
  /// [updateTime] Required.
  GetMembershipBindingResult({
    required this.createTime,
    required this.deleteTime,
    required this.effectiveLabels,
    required this.id,
    required this.labels,
    required this.location,
    required this.membershipBindingId,
    required this.membershipId,
    required this.name,
    this.project,
    required this.pulumiLabels,
    required this.scope,
    required this.states,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deleteTime': deleteTime,
      'effectiveLabels': effectiveLabels,
      'id': id,
      'labels': labels,
      'location': location,
      'membershipBindingId': membershipBindingId,
      'membershipId': membershipId,
      'name': name,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'scope': scope,
      'states':
          pulumi.Input.encodeList<
            GetMembershipBindingState,
            Map<String, dynamic>
          >(states, (value) => value.toMap()),
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetMembershipBindingResult.fromMap(Map<String, dynamic> map) {
    return GetMembershipBindingResult(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      membershipBindingId: map['membershipBindingId'] as String,
      membershipId: map['membershipId'] as String,
      name: map['name'] as String,
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      scope: map['scope'] as String,
      states: pulumi.Input.decodeList<GetMembershipBindingState>(
        map['states']!,
        (value) => GetMembershipBindingState.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
