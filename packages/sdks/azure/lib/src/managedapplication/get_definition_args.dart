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
  const GetDefinitionArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetDefinitionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

