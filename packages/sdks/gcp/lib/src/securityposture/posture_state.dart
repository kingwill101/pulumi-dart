// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'posture_policy_set.dart';

/// Input properties used for looking up and filtering Posture resources.
class PostureState {
  /// Time the Posture was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Description of the posture.
  final pulumi.Input<String>? description;
  /// For Resource freshness validation (https://google.aip.dev/154)
  final pulumi.Input<String>? etag;
  /// Location of the resource, eg: global.
  final pulumi.Input<String>? location;
  /// Name of the posture.
  final pulumi.Input<String>? name;
  /// The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  final pulumi.Input<String>? parent;
  /// List of policy sets for the posture.
  /// Structure is documented below.
  final pulumi.Input<List<PosturePolicySet>>? policySets;
  /// Id of the posture. It is an immutable field.
  final pulumi.Input<String>? postureId;
  /// If set, there are currently changes in flight to the posture.
  final pulumi.Input<bool>? reconciling;
  /// Revision_id of the posture.
  final pulumi.Input<String>? revisionId;
  /// State of the posture. Update to state field should not be triggered along with
  /// with other field updates.
  /// Possible values are: `DEPRECATED`, `DRAFT`, `ACTIVE`.
  final pulumi.Input<String>? state;
  /// Time the Posture was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [PostureState].
  /// [createTime] Time the Posture was created in UTC.
  /// [description] Description of the posture.
  /// [etag] For Resource freshness validation (https://google.aip.dev/154)
  /// [location] Location of the resource, eg: global.
  /// [name] Name of the posture.
  /// [parent] The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  /// [policySets] List of policy sets for the posture.
  /// [postureId] Id of the posture. It is an immutable field.
  /// [reconciling] If set, there are currently changes in flight to the posture.
  /// [revisionId] Revision_id of the posture.
  /// [state] State of the posture. Update to state field should not be triggered along with
  /// [updateTime] Time the Posture was updated in UTC.
  PostureState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<List<PosturePolicySet>>? policySets,
    pulumi.Output<String>? postureId,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? revisionId,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      policySets = pulumi.Input.asOptionalInput<List<PosturePolicySet>>(policySets),
      postureId = pulumi.Input.asOptionalInput<String>(postureId),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      revisionId = pulumi.Input.asOptionalInput<String>(revisionId),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'policySets': ?pulumi.Input.mapOptionalInputValue<List<PosturePolicySet>, List<Map<String, dynamic>>>(policySets, (value) => pulumi.Input.encodeList<PosturePolicySet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'postureId': ?postureId,
      'reconciling': ?reconciling,
      'revisionId': ?revisionId,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory PostureState.fromMap(Map<String, dynamic> map) {
    return PostureState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      policySets: map['policySets'] == null ? null : pulumi.Output.create<List<PosturePolicySet>>(pulumi.Input.decodeList<PosturePolicySet>(map['policySets'], (value) => PosturePolicySet.fromMap((value as Map).cast<String, dynamic>()))),
      postureId: map['postureId'] == null ? null : pulumi.Output.create<String>(map['postureId'] as String),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      revisionId: map['revisionId'] == null ? null : pulumi.Output.create<String>(map['revisionId'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

