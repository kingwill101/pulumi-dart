// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedapplication_get_definition_get_definition_args_doc}
/// Arguments for getDefinition.
/// {@endtemplate}
/// {@macro pulumi_managedapplication_get_definition_get_definition_args_doc}
class GetDefinitionArgs {
  /// Specifies the name of the Managed Application Definition.
  final pulumi.Input<String> name;
  /// Specifies the name of the Resource Group where this Managed Application Definition exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDefinitionArgs].
  /// [name] Specifies the name of the Managed Application Definition.
  /// [resourceGroupName] Specifies the name of the Resource Group where this Managed Application Definition exists.
  GetDefinitionArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetDefinitionArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

