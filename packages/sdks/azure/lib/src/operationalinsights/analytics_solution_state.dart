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
  AnalyticsSolutionState({
    pulumi.Output<String>? location,
    pulumi.Output<AnalyticsSolutionPlan>? plan,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? solutionName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? workspaceName,
    pulumi.Output<String>? workspaceResourceId,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      plan = pulumi.Input.asOptionalInput<AnalyticsSolutionPlan>(plan),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      solutionName = pulumi.Input.asOptionalInput<String>(solutionName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asOptionalInput<String>(workspaceName),
      workspaceResourceId = pulumi.Input.asOptionalInput<String>(workspaceResourceId);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<AnalyticsSolutionPlan>(AnalyticsSolutionPlan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      solutionName: map['solutionName'] == null ? null : pulumi.Output.create<String>(map['solutionName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceName: map['workspaceName'] == null ? null : pulumi.Output.create<String>(map['workspaceName'] as String),
      workspaceResourceId: map['workspaceResourceId'] == null ? null : pulumi.Output.create<String>(map['workspaceResourceId'] as String),
    );
  }
}

