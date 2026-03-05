// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_assignment_args_doc}
/// Arguments for getAssignment.
/// {@endtemplate}
/// {@macro pulumi_security_get_assignment_args_doc}
class GetAssignmentArgs {
  /// The security assignment key - unique key for the standard assignment
  final pulumi.Input<String> assignmentId;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAssignmentArgs].
  /// [assignmentId] The security assignment key - unique key for the standard assignment
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetAssignmentArgs({
    required this.assignmentId,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentId': assignmentId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetAssignmentArgs(
      assignmentId: pulumi.Input.fromValue(map['assignmentId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

