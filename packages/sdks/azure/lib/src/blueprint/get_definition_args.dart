// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blueprint_get_definition_get_definition_args_doc}
/// Arguments for getDefinition.
/// {@endtemplate}
/// {@macro pulumi_blueprint_get_definition_get_definition_args_doc}
class GetDefinitionArgs {
  /// The name of the Blueprint.
  final pulumi.Input<String> name;

  /// The ID of the Subscription or Management Group, as the scope at which the blueprint definition is stored.
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetDefinitionArgs].
  /// [name] The name of the Blueprint.
  /// [scopeId] The ID of the Subscription or Management Group, as the scope at which the blueprint definition is stored.
  GetDefinitionArgs({required this.name, required this.scopeId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'scopeId': scopeId};
  }

  factory GetDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetDefinitionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
    );
  }
}
