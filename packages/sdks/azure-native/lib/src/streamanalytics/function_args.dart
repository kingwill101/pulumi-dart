// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_function_args_doc}
/// The set of arguments for Function.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_function_args_doc}
class FunctionArgs {
  /// The name of the function.
  final pulumi.Input<String?>? functionName;
  /// The name of the streaming job.
  final pulumi.Input<String> jobName;
  /// Resource name
  final pulumi.Input<String?>? name;
  /// The properties that are associated with a function.
  final pulumi.Input<dynamic>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [FunctionArgs].
  /// [functionName] The name of the function.
  /// [jobName] The name of the streaming job.
  /// [name] Resource name
  /// [properties] The properties that are associated with a function.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const FunctionArgs({
    this.functionName,
    required this.jobName,
    this.name,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': ?functionName,
      'jobName': jobName,
      'name': ?name,
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory FunctionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionArgs(
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
