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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? membershipBindingId,
    pulumi.Output<String>? membershipId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? scope,
    pulumi.Output<List<MembershipBindingState>>? states,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      membershipBindingId = pulumi.Input.asOptionalInput<String>(membershipBindingId),
      membershipId = pulumi.Input.asOptionalInput<String>(membershipId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      states = pulumi.Input.asOptionalInput<List<MembershipBindingState>>(states),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      membershipBindingId: map['membershipBindingId'] == null ? null : pulumi.Output.create<String>(map['membershipBindingId'] as String),
      membershipId: map['membershipId'] == null ? null : pulumi.Output.create<String>(map['membershipId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      states: map['states'] == null ? null : pulumi.Output.create<List<MembershipBindingState>>(pulumi.Input.decodeList<MembershipBindingState>(map['states'], (value) => MembershipBindingState.fromMap((value as Map).cast<String, dynamic>()))),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

