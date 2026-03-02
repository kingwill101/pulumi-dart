// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_binding_state.dart';

/// Input properties used for looking up and filtering MembershipBinding resources.
class MembershipBindingGkehubState {
  /// Time the MembershipBinding was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Time the MembershipBinding was deleted in UTC.
  final pulumi.Input<String>? deleteTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels for this Membership binding.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location of the membership
  final pulumi.Input<String>? location;
  /// The client-provided identifier of the membership binding.
  final pulumi.Input<String>? membershipBindingId;
  /// Id of the membership
  final pulumi.Input<String>? membershipId;
  /// The resource name for the membershipbinding itself
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// A Workspace resource name in the format
  /// `projects/*/locations/*/scopes/*`.
  final pulumi.Input<String>? scope;
  /// State of the membership binding resource.
  /// Structure is documented below.
  final pulumi.Input<List<MembershipBindingState>>? states;
  /// Google-generated UUID for this resource.
  final pulumi.Input<String>? uid;
  /// Time the MembershipBinding was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MembershipBindingGkehubState].
  /// [createTime] Time the MembershipBinding was created in UTC.
  /// [deleteTime] Time the MembershipBinding was deleted in UTC.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels for this Membership binding.
  /// [location] Location of the membership
  /// [membershipBindingId] The client-provided identifier of the membership binding.
  /// [membershipId] Id of the membership
  /// [name] The resource name for the membershipbinding itself
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [scope] A Workspace resource name in the format
  /// [states] State of the membership binding resource.
  /// [uid] Google-generated UUID for this resource.
  /// [updateTime] Time the MembershipBinding was updated in UTC.
  MembershipBindingGkehubState({
    this.createTime,
    this.deleteTime,
    this.effectiveLabels,
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
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'membershipBindingId': ?membershipBindingId,
      'membershipId': ?membershipId,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'scope': ?scope,
      'states': ?pulumi.Input.mapOptionalInputValue<List<MembershipBindingState>, List<Map<String, dynamic>>>(states, (value) => pulumi.Input.encodeList<MembershipBindingState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory MembershipBindingGkehubState.fromMap(Map<String, dynamic> map) {
    return MembershipBindingGkehubState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      deleteTime: map['deleteTime'] == null ? null : (map['deleteTime']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      membershipBindingId: map['membershipBindingId'] == null ? null : (map['membershipBindingId']! as String).input(),
      membershipId: map['membershipId'] == null ? null : (map['membershipId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      states: map['states'] == null ? null : (pulumi.Input.decodeList<MembershipBindingState>(map['states']!, (value) => MembershipBindingState.fromMap((value as Map).cast<String, dynamic>()))).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

