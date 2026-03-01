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
    pulumi.Output<String>? description,
    required pulumi.Output<String> location,
    required pulumi.Output<String> parent,
    required pulumi.Output<List<PosturePolicySet>> policySets,
    required pulumi.Output<String> postureId,
    required pulumi.Output<String> state,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asInput<String>(location),
      parent = pulumi.Input.asInput<String>(parent),
      policySets = pulumi.Input.asInput<List<PosturePolicySet>>(policySets),
      postureId = pulumi.Input.asInput<String>(postureId),
      state = pulumi.Input.asInput<String>(state);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      parent: pulumi.Output.create<String>(map['parent'] as String),
      policySets: pulumi.Output.create<List<PosturePolicySet>>(pulumi.Input.decodeList<PosturePolicySet>(map['policySets'], (value) => PosturePolicySet.fromMap((value as Map).cast<String, dynamic>()))),
      postureId: pulumi.Output.create<String>(map['postureId'] as String),
      state: pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

