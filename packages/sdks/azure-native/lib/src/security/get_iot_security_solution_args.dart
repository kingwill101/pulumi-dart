// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_iot_security_solution_args_doc}
/// Arguments for getIotSecuritySolution.
/// {@endtemplate}
/// {@macro pulumi_security_get_iot_security_solution_args_doc}
class GetIotSecuritySolutionArgs {
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the IoT Security solution.
  final pulumi.Input<String> solutionName;

  /// Creates a new [GetIotSecuritySolutionArgs].
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [solutionName] The name of the IoT Security solution.
  GetIotSecuritySolutionArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> solutionName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      solutionName = pulumi.Input.asInput<String>(solutionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'solutionName': solutionName,
    };
  }

  factory GetIotSecuritySolutionArgs.fromMap(Map<String, dynamic> map) {
    return GetIotSecuritySolutionArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      solutionName: pulumi.Output.create<String>(map['solutionName'] as String),
    );
  }
}

