// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'solution_plan.dart';
import 'solution_properties.dart';

/// {@template pulumi_operationsmanagement_solution_args_doc}
/// The set of arguments for Solution.
/// {@endtemplate}
/// {@macro pulumi_operationsmanagement_solution_args_doc}
class SolutionArgs {
  /// Resource location
  final pulumi.Input<String>? location;
  /// Plan for solution object supported by the OperationsManagement resource provider.
  final pulumi.Input<SolutionPlan>? plan;
  /// Properties for solution object supported by the OperationsManagement resource provider.
  final pulumi.Input<SolutionProperties>? properties;
  /// The name of the resource group to get. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// User Solution Name.
  final pulumi.Input<String>? solutionName;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SolutionArgs].
  /// [location] Resource location
  /// [plan] Plan for solution object supported by the OperationsManagement resource provider.
  /// [properties] Properties for solution object supported by the OperationsManagement resource provider.
  /// [resourceGroupName] The name of the resource group to get. The name is case insensitive.
  /// [solutionName] User Solution Name.
  /// [tags] Resource tags
  const SolutionArgs({
    this.location,
    this.plan,
    this.properties,
    required this.resourceGroupName,
    this.solutionName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'plan': ?pulumi.Input.mapOptionalInputValue<SolutionPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<SolutionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'solutionName': ?solutionName,
      'tags': ?tags,
    };
  }

  factory SolutionArgs.fromMap(Map<String, dynamic> map) {
    return SolutionArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SolutionPlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SolutionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      solutionName: (() { final guardedValue = map['solutionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

