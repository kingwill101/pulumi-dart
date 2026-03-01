// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'modeling_resource_properties.dart';

/// {@template pulumi_recommendationsservice_modeling_args_doc}
/// The set of arguments for Modeling.
/// {@endtemplate}
/// {@macro pulumi_recommendationsservice_modeling_args_doc}
class ModelingArgs {
  /// The name of the RecommendationsService Account resource.
  final pulumi.Input<String> accountName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the Modeling resource.
  final pulumi.Input<String>? modelingName;
  /// Modeling resource properties.
  final pulumi.Input<ModelingResourceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ModelingArgs].
  /// [accountName] The name of the RecommendationsService Account resource.
  /// [location] The geo-location where the resource lives
  /// [modelingName] The name of the Modeling resource.
  /// [properties] Modeling resource properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ModelingArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? modelingName,
    pulumi.Output<ModelingResourceProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      modelingName = pulumi.Input.asOptionalInput<String>(modelingName),
      properties = pulumi.Input.asOptionalInput<ModelingResourceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'location': ?location,
      'modelingName': ?modelingName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ModelingResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ModelingArgs.fromMap(Map<String, dynamic> map) {
    return ModelingArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      modelingName: map['modelingName'] == null ? null : pulumi.Output.create<String>(map['modelingName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ModelingResourceProperties>(ModelingResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

