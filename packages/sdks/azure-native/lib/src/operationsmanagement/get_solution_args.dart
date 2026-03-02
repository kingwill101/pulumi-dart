// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationsmanagement_get_solution_args_doc}
/// Arguments for getSolution.
/// {@endtemplate}
/// {@macro pulumi_operationsmanagement_get_solution_args_doc}
class GetSolutionArgs {
  /// The name of the resource group to get. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// User Solution Name.
  final pulumi.Input<String> solutionName;

  /// Creates a new [GetSolutionArgs].
  /// [resourceGroupName] The name of the resource group to get. The name is case insensitive.
  /// [solutionName] User Solution Name.
  GetSolutionArgs({
    required this.resourceGroupName,
    required this.solutionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'solutionName': solutionName,
    };
  }

  factory GetSolutionArgs.fromMap(Map<String, dynamic> map) {
    return GetSolutionArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      solutionName: (map['solutionName'] as String).input(),
    );
  }
}

