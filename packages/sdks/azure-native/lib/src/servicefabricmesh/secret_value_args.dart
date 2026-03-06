// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabricmesh_secret_value_args_doc}
/// The set of arguments for SecretValue.
/// {@endtemplate}
/// {@macro pulumi_servicefabricmesh_secret_value_args_doc}
class SecretValueArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Azure resource group name
  final pulumi.Input<String> resourceGroupName;
  /// The name of the secret resource.
  final pulumi.Input<String> secretResourceName;
  /// The name of the secret resource value which is typically the version identifier for the value.
  final pulumi.Input<String>? secretValueResourceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The actual value of the secret.
  final pulumi.Input<String>? value;

  /// Creates a new [SecretValueArgs].
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] Azure resource group name
  /// [secretResourceName] The name of the secret resource.
  /// [secretValueResourceName] The name of the secret resource value which is typically the version identifier for the value.
  /// [tags] Resource tags.
  /// [value] The actual value of the secret.
  const SecretValueArgs({
    this.location,
    required this.resourceGroupName,
    required this.secretResourceName,
    this.secretValueResourceName,
    this.tags,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'secretResourceName': secretResourceName,
      'secretValueResourceName': ?secretValueResourceName,
      'tags': ?tags,
      'value': ?value,
    };
  }

  factory SecretValueArgs.fromMap(Map<String, dynamic> map) {
    return SecretValueArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      secretResourceName: pulumi.Input.fromValue(map['secretResourceName'] as String),
      secretValueResourceName: (() { final guardedValue = map['secretValueResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

