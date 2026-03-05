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
    required this.accountName,
    this.location,
    this.modelingName,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelingName: (() { final guardedValue = map['modelingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModelingResourceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

