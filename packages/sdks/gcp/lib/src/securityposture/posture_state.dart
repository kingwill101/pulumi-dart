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
    this.createTime,
    this.description,
    this.etag,
    this.location,
    this.name,
    this.parent,
    this.policySets,
    this.postureId,
    this.reconciling,
    this.revisionId,
    this.state,
    this.updateTime,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      policySets: map['policySets'] == null ? null : (pulumi.Input.decodeList<PosturePolicySet>(map['policySets'], (value) => PosturePolicySet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      postureId: map['postureId'] == null ? null : (map['postureId'] as String).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling'] as bool).input(),
      revisionId: map['revisionId'] == null ? null : (map['revisionId'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

