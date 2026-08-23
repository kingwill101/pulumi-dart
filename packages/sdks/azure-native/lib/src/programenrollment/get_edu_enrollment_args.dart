// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_programenrollment_get_edu_enrollment_args_doc}
/// Arguments for getEduEnrollment.
/// {@endtemplate}
/// {@macro pulumi_programenrollment_get_edu_enrollment_args_doc}
class GetEduEnrollmentArgs {
  /// The name of the edu enrollment
  final pulumi.Input<String> enrollmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEduEnrollmentArgs].
  /// [enrollmentName] The name of the edu enrollment
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetEduEnrollmentArgs({
    required this.enrollmentName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enrollmentName': enrollmentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEduEnrollmentArgs.fromMap(Map<String, dynamic> map) {
    return GetEduEnrollmentArgs(
      enrollmentName: pulumi.Input.fromValue(map['enrollmentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
