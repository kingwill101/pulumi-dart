// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_resource_properties.dart';

/// {@template pulumi_servicefabricmesh_secret_args_doc}
/// The set of arguments for Secret.
/// {@endtemplate}
/// {@macro pulumi_servicefabricmesh_secret_args_doc}
class SecretArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Describes the properties of a secret resource.
  final pulumi.Input<SecretResourceProperties> properties;
  /// Azure resource group name
  final pulumi.Input<String> resourceGroupName;
  /// The name of the secret resource.
  final pulumi.Input<String>? secretResourceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SecretArgs].
  /// [location] The geo-location where the resource lives
  /// [properties] Describes the properties of a secret resource.
  /// [resourceGroupName] Azure resource group name
  /// [secretResourceName] The name of the secret resource.
  /// [tags] Resource tags.
  const SecretArgs({
    this.location,
    required this.properties,
    required this.resourceGroupName,
    this.secretResourceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<SecretResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'secretResourceName': ?secretResourceName,
      'tags': ?tags,
    };
  }

  factory SecretArgs.fromMap(Map<String, dynamic> map) {
    return SecretArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(SecretResourceProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      secretResourceName: (() { final guardedValue = map['secretResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
