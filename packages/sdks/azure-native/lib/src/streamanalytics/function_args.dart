// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_function_properties.dart';

/// {@template pulumi_streamanalytics_function_args_doc}
/// The set of arguments for Function.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_function_args_doc}
class FunctionArgs {
  /// The name of the function.
  final pulumi.Input<String>? functionName;
  /// The name of the streaming job.
  final pulumi.Input<String> jobName;
  /// Resource name
  final pulumi.Input<String>? name;
  /// The properties that are associated with a function.
  final pulumi.Input<AggregateFunctionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [FunctionArgs].
  /// [functionName] The name of the function.
  /// [jobName] The name of the streaming job.
  /// [name] Resource name
  /// [properties] The properties that are associated with a function.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  FunctionArgs({
    pulumi.Output<String>? functionName,
    required pulumi.Output<String> jobName,
    pulumi.Output<String>? name,
    pulumi.Output<AggregateFunctionProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      functionName = pulumi.Input.asOptionalInput<String>(functionName),
      jobName = pulumi.Input.asInput<String>(jobName),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<AggregateFunctionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': ?functionName,
      'jobName': jobName,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<AggregateFunctionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory FunctionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionArgs(
      functionName: map['functionName'] == null ? null : pulumi.Output.create<String>(map['functionName'] as String),
      jobName: pulumi.Output.create<String>(map['jobName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<AggregateFunctionProperties>(AggregateFunctionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

