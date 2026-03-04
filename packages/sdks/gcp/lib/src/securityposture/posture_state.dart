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
      'policySets':
          ?pulumi.Input.mapOptionalInputValue<
            List<PosturePolicySet>,
            List<Map<String, dynamic>>
          >(
            policySets,
            (value) =>
                pulumi.Input.encodeList<PosturePolicySet, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'postureId': ?postureId,
      'reconciling': ?reconciling,
      'revisionId': ?revisionId,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory PostureState.fromMap(Map<String, dynamic> map) {
    return PostureState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parent: (() {
        final guardedValue = map['parent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policySets: (() {
        final guardedValue = map['policySets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PosturePolicySet>(
            guardedValue,
            (value) => PosturePolicySet.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      postureId: (() {
        final guardedValue = map['postureId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reconciling: (() {
        final guardedValue = map['reconciling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      revisionId: (() {
        final guardedValue = map['revisionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
