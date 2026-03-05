// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'posture_policy_set.dart';

/// {@template pulumi_securityposture_posture_posture_args_doc}
/// The set of arguments for Posture.
/// {@endtemplate}
/// {@macro pulumi_securityposture_posture_posture_args_doc}
class PostureArgs {
  /// Description of the posture.
  final pulumi.Input<String>? description;
  /// Location of the resource, eg: global.
  final pulumi.Input<String> location;
  /// The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  final pulumi.Input<String> parent;
  /// List of policy sets for the posture.
  /// Structure is documented below.
  final pulumi.Input<List<PosturePolicySet>> policySets;
  /// Id of the posture. It is an immutable field.
  final pulumi.Input<String> postureId;
  /// State of the posture. Update to state field should not be triggered along with
  /// with other field updates.
  /// Possible values are: `DEPRECATED`, `DRAFT`, `ACTIVE`.
  final pulumi.Input<String> state;

  /// Creates a new [PostureArgs].
  /// [description] Description of the posture.
  /// [location] Location of the resource, eg: global.
  /// [parent] The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  /// [policySets] List of policy sets for the posture.
  /// [postureId] Id of the posture. It is an immutable field.
  /// [state] State of the posture. Update to state field should not be triggered along with
  PostureArgs({
    this.description,
    required this.location,
    required this.parent,
    required this.policySets,
    required this.postureId,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': location,
      'parent': parent,
      'policySets': pulumi.Input.mapInputValue<List<PosturePolicySet>, List<Map<String, dynamic>>>(policySets, (value) => pulumi.Input.encodeList<PosturePolicySet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'postureId': postureId,
      'state': state,
    };
  }

  factory PostureArgs.fromMap(Map<String, dynamic> map) {
    return PostureArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      policySets: pulumi.Input.fromValue(pulumi.Input.decodeList<PosturePolicySet>(map['policySets']!, (value) => PosturePolicySet.fromMap((value as Map).cast<String, dynamic>()))),
      postureId: pulumi.Input.fromValue(map['postureId'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

