// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'posture_policy_set.dart';

/// {@template pulumi_securityposture_posture_posture_args_doc}
/// The set of arguments for Posture.
/// {@endtemplate}
/// {@macro pulumi_securityposture_posture_posture_args_doc}
class PostureArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of the posture.
  final pulumi.Input<String?>? description;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the posture.
  /// [location] Location of the resource, eg: global.
  /// [parent] The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  /// [policySets] List of policy sets for the posture.
  /// [postureId] Id of the posture. It is an immutable field.
  /// [state] State of the posture. Update to state field should not be triggered along with
  const PostureArgs({
    this.deletionPolicy,
    this.description,
    required this.location,
    required this.parent,
    required this.policySets,
    required this.postureId,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      policySets: pulumi.Input.fromValue(pulumi.Input.decodeList<PosturePolicySet>(map['policySets']!, (value) => PosturePolicySet.fromMap((value as Map).cast<String, dynamic>()))),
      postureId: pulumi.Input.fromValue(map['postureId'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
