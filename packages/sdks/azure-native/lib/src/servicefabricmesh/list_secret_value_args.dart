// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabricmesh_list_secret_value_args_doc}
/// Arguments for listSecretValue.
/// {@endtemplate}
/// {@macro pulumi_servicefabricmesh_list_secret_value_args_doc}
class ListSecretValueArgs {
  /// Azure resource group name
  final pulumi.Input<String> resourceGroupName;
  /// The name of the secret resource.
  final pulumi.Input<String> secretResourceName;
  /// The name of the secret resource value which is typically the version identifier for the value.
  final pulumi.Input<String> secretValueResourceName;

  /// Creates a new [ListSecretValueArgs].
  /// [resourceGroupName] Azure resource group name
  /// [secretResourceName] The name of the secret resource.
  /// [secretValueResourceName] The name of the secret resource value which is typically the version identifier for the value.
  ListSecretValueArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> secretResourceName,
    required pulumi.Output<String> secretValueResourceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      secretResourceName = pulumi.Input.asInput<String>(secretResourceName),
      secretValueResourceName = pulumi.Input.asInput<String>(secretValueResourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'secretResourceName': secretResourceName,
      'secretValueResourceName': secretValueResourceName,
    };
  }

  factory ListSecretValueArgs.fromMap(Map<String, dynamic> map) {
    return ListSecretValueArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secretResourceName: pulumi.Output.create<String>(map['secretResourceName'] as String),
      secretValueResourceName: pulumi.Output.create<String>(map['secretValueResourceName'] as String),
    );
  }
}

