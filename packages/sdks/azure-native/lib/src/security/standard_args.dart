// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_component_properties.dart';
import 'standard_supported_clouds.dart';

/// {@template pulumi_security_standard_args_doc}
/// The set of arguments for Standard.
/// {@endtemplate}
/// {@macro pulumi_security_standard_args_doc}
class StandardArgs {
  /// category of the standard provided
  final pulumi.Input<String>? category;
  /// List of component objects containing component unique keys (such as assessment keys) to apply to standard scope.  Currently only supports assessment keys.
  final pulumi.Input<List<StandardComponentProperties>>? components;
  /// description of the standard
  final pulumi.Input<String>? description;
  /// display name of the standard, equivalent to the standardId
  final pulumi.Input<String>? displayName;
  /// Kind of the resource
  final pulumi.Input<String>? kind;
  /// Location where the resource is stored
  final pulumi.Input<String>? location;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The Security Standard key - unique key for the standard type
  final pulumi.Input<String>? standardId;
  /// List of all standard supported clouds.
  final pulumi.Input<List<StandardSupportedClouds>>? supportedClouds;
  /// A list of key value pairs that describe the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [StandardArgs].
  /// [category] category of the standard provided
  /// [components] List of component objects containing component unique keys (such as assessment keys) to apply to standard scope.  Currently only supports assessment keys.
  /// [description] description of the standard
  /// [displayName] display name of the standard, equivalent to the standardId
  /// [kind] Kind of the resource
  /// [location] Location where the resource is stored
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [standardId] The Security Standard key - unique key for the standard type
  /// [supportedClouds] List of all standard supported clouds.
  /// [tags] A list of key value pairs that describe the resource.
  const StandardArgs({
    this.category,
    this.components,
    this.description,
    this.displayName,
    this.kind,
    this.location,
    required this.resourceGroupName,
    this.standardId,
    this.supportedClouds,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'components': ?pulumi.Input.mapOptionalInputValue<List<StandardComponentProperties>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<StandardComponentProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': ?displayName,
      'kind': ?kind,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'standardId': ?standardId,
      'supportedClouds': ?pulumi.Input.mapOptionalInputValue<List<StandardSupportedClouds>, List<String>>(supportedClouds, (value) => pulumi.Input.encodeList<StandardSupportedClouds, String>(value, (value) => value.wireValue)),
      'tags': ?tags,
    };
  }

  factory StandardArgs.fromMap(Map<String, dynamic> map) {
    return StandardArgs(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      components: (() { final guardedValue = map['components']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StandardComponentProperties>(guardedValue, (value) => StandardComponentProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      standardId: (() { final guardedValue = map['standardId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportedClouds: (() { final guardedValue = map['supportedClouds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StandardSupportedClouds>(guardedValue, (value) => StandardSupportedClouds.fromValue(value as String))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

