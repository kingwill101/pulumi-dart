// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_iot_security_solution_args_doc}
/// Arguments for getIotSecuritySolution.
/// {@endtemplate}
/// {@macro pulumi_security_get_iot_security_solution_args_doc}
class GetIotSecuritySolutionArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the IoT Security solution.
  final pulumi.Input<String> solutionName;

  /// Creates a new [GetIotSecuritySolutionArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [solutionName] The name of the IoT Security solution.
  const GetIotSecuritySolutionArgs({
    required this.resourceGroupName,
    required this.solutionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'solutionName': solutionName,
    };
  }

  factory GetIotSecuritySolutionArgs.fromMap(Map<String, dynamic> map) {
    return GetIotSecuritySolutionArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      solutionName: pulumi.Input.fromValue(map['solutionName'] as String),
    );
  }
}
