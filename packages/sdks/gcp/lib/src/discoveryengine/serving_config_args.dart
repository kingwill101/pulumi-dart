// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_serving_config_serving_config_args_doc}
/// The set of arguments for ServingConfig.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_serving_config_serving_config_args_doc}
class ServingConfigArgs {
  /// The resource IDs of the boost controls to be applied.
  final pulumi.Input<List<String>>? boostControlIds;
  /// The collection ID. Currently only accepts "default_collection".
  final pulumi.Input<String>? collectionId;
  /// The ID of the engine associated with the serving config.
  final pulumi.Input<String> engineId;
  /// The resource IDs of the filter controls to be applied.
  final pulumi.Input<List<String>>? filterControlIds;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The resource IDs of the promote controls to be applied.
  final pulumi.Input<List<String>>? promoteControlIds;
  /// The resource IDs of the redirect controls to be applied.
  final pulumi.Input<List<String>>? redirectControlIds;
  /// 'The unique ID of the serving config. Currently only accepts "default_search".'
  final pulumi.Input<String>? servingConfigId;
  /// The resource IDs of the synonyms controls to be applied.
  final pulumi.Input<List<String>>? synonymsControlIds;

  /// Creates a new [ServingConfigArgs].
  /// [boostControlIds] The resource IDs of the boost controls to be applied.
  /// [collectionId] The collection ID. Currently only accepts "default_collection".
  /// [engineId] The ID of the engine associated with the serving config.
  /// [filterControlIds] The resource IDs of the filter controls to be applied.
  /// [location] The geographic location where the data store should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  /// [promoteControlIds] The resource IDs of the promote controls to be applied.
  /// [redirectControlIds] The resource IDs of the redirect controls to be applied.
  /// [servingConfigId] 'The unique ID of the serving config. Currently only accepts "default_search".'
  /// [synonymsControlIds] The resource IDs of the synonyms controls to be applied.
  ServingConfigArgs({
    this.boostControlIds,
    this.collectionId,
    required this.engineId,
    this.filterControlIds,
    required this.location,
    this.project,
    this.promoteControlIds,
    this.redirectControlIds,
    this.servingConfigId,
    this.synonymsControlIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boostControlIds': ?boostControlIds,
      'collectionId': ?collectionId,
      'engineId': engineId,
      'filterControlIds': ?filterControlIds,
      'location': location,
      'project': ?project,
      'promoteControlIds': ?promoteControlIds,
      'redirectControlIds': ?redirectControlIds,
      'servingConfigId': ?servingConfigId,
      'synonymsControlIds': ?synonymsControlIds,
    };
  }

  factory ServingConfigArgs.fromMap(Map<String, dynamic> map) {
    return ServingConfigArgs(
      boostControlIds: (() { final guardedValue = map['boostControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      collectionId: (() { final guardedValue = map['collectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineId: pulumi.Input.fromValue(map['engineId'] as String),
      filterControlIds: (() { final guardedValue = map['filterControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promoteControlIds: (() { final guardedValue = map['promoteControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      redirectControlIds: (() { final guardedValue = map['redirectControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      servingConfigId: (() { final guardedValue = map['servingConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synonymsControlIds: (() { final guardedValue = map['synonymsControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

