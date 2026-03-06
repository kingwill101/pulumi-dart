// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'springbootapps_properties.dart';

/// {@template pulumi_offazurespringboot_springbootapp_args_doc}
/// The set of arguments for Springbootapp.
/// {@endtemplate}
/// {@macro pulumi_offazurespringboot_springbootapp_args_doc}
class SpringbootappArgs {
  /// The springbootapps resource definition.
  final pulumi.Input<SpringbootappsProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The springbootsites name.
  final pulumi.Input<String> siteName;
  /// The springbootapps name.
  final pulumi.Input<String>? springbootappsName;

  /// Creates a new [SpringbootappArgs].
  /// [properties] The springbootapps resource definition.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] The springbootsites name.
  /// [springbootappsName] The springbootapps name.
  const SpringbootappArgs({
    this.properties,
    required this.resourceGroupName,
    required this.siteName,
    this.springbootappsName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<SpringbootappsProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
      'springbootappsName': ?springbootappsName,
    };
  }

  factory SpringbootappArgs.fromMap(Map<String, dynamic> map) {
    return SpringbootappArgs(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringbootappsProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      siteName: pulumi.Input.fromValue(map['siteName'] as String),
      springbootappsName: (() { final guardedValue = map['springbootappsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

