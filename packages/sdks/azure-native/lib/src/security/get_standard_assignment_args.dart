// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_standard_assignment_args_doc}
/// Arguments for getStandardAssignment.
/// {@endtemplate}
/// {@macro pulumi_security_get_standard_assignment_args_doc}
class GetStandardAssignmentArgs {
  /// The identifier of the resource.
  final pulumi.Input<String> resourceId;
  /// The standard assignments assignment key - unique key for the standard assignment
  final pulumi.Input<String> standardAssignmentName;

  /// Creates a new [GetStandardAssignmentArgs].
  /// [resourceId] The identifier of the resource.
  /// [standardAssignmentName] The standard assignments assignment key - unique key for the standard assignment
  GetStandardAssignmentArgs({
    required pulumi.Output<String> resourceId,
    required pulumi.Output<String> standardAssignmentName,
  }) :
      resourceId = pulumi.Input.asInput<String>(resourceId),
      standardAssignmentName = pulumi.Input.asInput<String>(standardAssignmentName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
      'standardAssignmentName': standardAssignmentName,
    };
  }

  factory GetStandardAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetStandardAssignmentArgs(
      resourceId: pulumi.Output.create<String>(map['resourceId'] as String),
      standardAssignmentName: pulumi.Output.create<String>(map['standardAssignmentName'] as String),
    );
  }
}

