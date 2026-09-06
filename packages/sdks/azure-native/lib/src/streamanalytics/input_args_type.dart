// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Input.
class InputArgsType {
  /// The name of the input.
  final pulumi.Input<String?>? inputName;
  /// The name of the streaming job.
  final pulumi.Input<String> jobName;
  /// Resource name
  final pulumi.Input<String?>? name;
  /// The properties that are associated with an input. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<dynamic>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [InputArgsType].
  /// [inputName] The name of the input.
  /// [jobName] The name of the streaming job.
  /// [name] Resource name
  /// [properties] The properties that are associated with an input. Required on PUT (CreateOrReplace) requests.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const InputArgsType({
    this.inputName,
    required this.jobName,
    this.name,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputName': ?inputName,
      'jobName': jobName,
      'name': ?name,
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory InputArgsType.fromMap(Map<String, dynamic> map) {
    return InputArgsType(
      inputName: (() { final guardedValue = map['inputName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
