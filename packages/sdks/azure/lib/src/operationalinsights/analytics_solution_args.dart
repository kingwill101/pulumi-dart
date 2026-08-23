// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_solution_plan.dart';

/// {@template pulumi_operationalinsights_analytics_solution_analytics_solution_args_doc}
/// The set of arguments for AnalyticsSolution.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_analytics_solution_analytics_solution_args_doc}
class AnalyticsSolutionArgs {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `plan` block as documented below.
  final pulumi.Input<AnalyticsSolutionPlan> plan;
  /// The name of the resource group in which the Log Analytics solution is created. Changing this forces a new resource to be created. Note: The solution and its related workspace can only exist in the same resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the name of the solution to be deployed. See [here for options](https://docs.microsoft.com/azure/log-analytics/log-analytics-add-solutions).Changing this forces a new resource to be created.
  final pulumi.Input<String> solutionName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The full name of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created.
  final pulumi.Input<String> workspaceName;
  /// The full resource ID of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created.
  final pulumi.Input<String> workspaceResourceId;

  /// Creates a new [AnalyticsSolutionArgs].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [plan] A `plan` block as documented below.
  /// [resourceGroupName] The name of the resource group in which the Log Analytics solution is created. Changing this forces a new resource to be created. Note: The solution and its related workspace can only exist in the same resource group.
  /// [solutionName] Specifies the name of the solution to be deployed. See [here for options](https://docs.microsoft.com/azure/log-analytics/log-analytics-add-solutions).Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [workspaceName] The full name of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created.
  /// [workspaceResourceId] The full resource ID of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created.
  const AnalyticsSolutionArgs({
    this.location,
    required this.plan,
    required this.resourceGroupName,
    required this.solutionName,
    this.tags,
    required this.workspaceName,
    required this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'plan': pulumi.Input.mapInputValue<AnalyticsSolutionPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'solutionName': solutionName,
      'tags': ?tags,
      'workspaceName': workspaceName,
      'workspaceResourceId': workspaceResourceId,
    };
  }

  factory AnalyticsSolutionArgs.fromMap(Map<String, dynamic> map) {
    return AnalyticsSolutionArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: pulumi.Input.fromValue(AnalyticsSolutionPlan.fromMap((map['plan']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      solutionName: pulumi.Input.fromValue(map['solutionName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
      workspaceResourceId: pulumi.Input.fromValue(map['workspaceResourceId'] as String),
    );
  }
}
