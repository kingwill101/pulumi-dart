// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'springbootservers_properties.dart';

/// {@template pulumi_offazurespringboot_springbootserver_args_doc}
/// The set of arguments for Springbootserver.
/// {@endtemplate}
/// {@macro pulumi_offazurespringboot_springbootserver_args_doc}
class SpringbootserverArgs {
  /// The springbootservers resource definition.
  final pulumi.Input<SpringbootserversProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The springbootsites name.
  final pulumi.Input<String> siteName;
  /// The springbootservers name.
  final pulumi.Input<String>? springbootserversName;

  /// Creates a new [SpringbootserverArgs].
  /// [properties] The springbootservers resource definition.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] The springbootsites name.
  /// [springbootserversName] The springbootservers name.
  SpringbootserverArgs({
    this.properties,
    required this.resourceGroupName,
    required this.siteName,
    this.springbootserversName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<SpringbootserversProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
      'springbootserversName': ?springbootserversName,
    };
  }

  factory SpringbootserverArgs.fromMap(Map<String, dynamic> map) {
    return SpringbootserverArgs(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringbootserversProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      siteName: pulumi.Input.fromValue(map['siteName'] as String),
      springbootserversName: (() { final guardedValue = map['springbootserversName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

