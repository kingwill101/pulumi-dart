// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_registry_token_get_registry_token_args_doc}
/// Arguments for getRegistryToken.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_registry_token_get_registry_token_args_doc}
class GetRegistryTokenArgs {
  /// The Name of the Container Registry where the token exists.
  final pulumi.Input<String> containerRegistryName;
  /// The name of the Container Registry token.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where this Container Registry token exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRegistryTokenArgs].
  /// [containerRegistryName] The Name of the Container Registry where the token exists.
  /// [name] The name of the Container Registry token.
  /// [resourceGroupName] The Name of the Resource Group where this Container Registry token exists.
  GetRegistryTokenArgs({
    required pulumi.Output<String> containerRegistryName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      containerRegistryName = pulumi.Input.asInput<String>(containerRegistryName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryName': containerRegistryName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRegistryTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryTokenArgs(
      containerRegistryName: pulumi.Output.create<String>(map['containerRegistryName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

