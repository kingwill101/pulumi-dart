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
    pulumi.Output<String>? category,
    pulumi.Output<List<StandardComponentProperties>>? components,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? standardId,
    pulumi.Output<List<StandardSupportedClouds>>? supportedClouds,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      components = pulumi.Input.asOptionalInput<List<StandardComponentProperties>>(components),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      standardId = pulumi.Input.asOptionalInput<String>(standardId),
      supportedClouds = pulumi.Input.asOptionalInput<List<StandardSupportedClouds>>(supportedClouds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      components: map['components'] == null ? null : pulumi.Output.create<List<StandardComponentProperties>>(pulumi.Input.decodeList<StandardComponentProperties>(map['components'], (value) => StandardComponentProperties.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      standardId: map['standardId'] == null ? null : pulumi.Output.create<String>(map['standardId'] as String),
      supportedClouds: map['supportedClouds'] == null ? null : pulumi.Output.create<List<StandardSupportedClouds>>(pulumi.Input.decodeList<StandardSupportedClouds>(map['supportedClouds'], (value) => StandardSupportedClouds.fromValue(value as String))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

