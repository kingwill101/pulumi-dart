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
  StandardArgs({
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
      'supportedClouds': ?pulumi.Input.mapOptionalInputValue<List<StandardSupportedClouds>, List<String>>(supportedClouds, (value) => pulumi.Input.encodeList<StandardSupportedClouds, String>(value, (value) => value.value)),
      'tags': ?tags,
    };
  }

  factory StandardArgs.fromMap(Map<String, dynamic> map) {
    return StandardArgs(
      category: map['category'] == null ? null : (map['category'] as String).input(),
      components: map['components'] == null ? null : (pulumi.Input.decodeList<StandardComponentProperties>(map['components'], (value) => StandardComponentProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      standardId: map['standardId'] == null ? null : (map['standardId'] as String).input(),
      supportedClouds: map['supportedClouds'] == null ? null : (pulumi.Input.decodeList<StandardSupportedClouds>(map['supportedClouds'], (value) => StandardSupportedClouds.fromValue(value as String))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

