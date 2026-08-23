// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_solution_plan.dart';

/// Input properties used for looking up and filtering AnalyticsSolution resources.
class AnalyticsSolutionState {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `plan` block as documented below.
  final pulumi.Input<AnalyticsSolutionPlan>? plan;
  /// The name of the resource group in which the Log Analytics solution is created. Changing this forces a new resource to be created. Note: The solution and its related workspace can only exist in the same resource group.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the name of the solution to be deployed. See [here for options](https://docs.microsoft.com/azure/log-analytics/log-analytics-add-solutions).Changing this forces a new resource to be created.
  final pulumi.Input<String>? solutionName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The full name of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created.
  final pulumi.Input<String>? workspaceName;
  /// The full resource ID of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created.
  final pulumi.Input<String>? workspaceResourceId;

  /// Creates a new [AnalyticsSolutionState].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [plan] A `plan` block as documented below.
  /// [resourceGroupName] The name of the resource group in which the Log Analytics solution is created. Changing this forces a new resource to be created. Note: The solution and its related workspace can only exist in the same resource group.
  /// [solutionName] Specifies the name of the solution to be deployed. See [here for options](https://docs.microsoft.com/azure/log-analytics/log-analytics-add-solutions).Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [workspaceName] The full name of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created.
  /// [workspaceResourceId] The full resource ID of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created.
  const AnalyticsSolutionState({
    this.location,
    this.plan,
    this.resourceGroupName,
    this.solutionName,
    this.tags,
    this.workspaceName,
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'plan': ?pulumi.Input.mapOptionalInputValue<AnalyticsSolutionPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'solutionName': ?solutionName,
      'tags': ?tags,
      'workspaceName': ?workspaceName,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory AnalyticsSolutionState.fromMap(Map<String, dynamic> map) {
    return AnalyticsSolutionState(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsSolutionPlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      solutionName: (() { final guardedValue = map['solutionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceName: (() { final guardedValue = map['workspaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceResourceId: (() { final guardedValue = map['workspaceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
