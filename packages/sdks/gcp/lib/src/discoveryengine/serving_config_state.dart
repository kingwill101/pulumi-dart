// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServingConfig resources.
class ServingConfigState {
  /// The resource IDs of the boost controls to be applied.
  final pulumi.Input<List<String>?>? boostControlIds;
  /// The collection ID. Currently only accepts "defaultCollection".
  final pulumi.Input<String?>? collectionId;
  /// The ID of the engine associated with the serving config.
  final pulumi.Input<String?>? engineId;
  /// The resource IDs of the filter controls to be applied.
  final pulumi.Input<List<String>?>? filterControlIds;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String?>? location;
  /// The unique full resource name of the serving config. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}/servingConfigs/{serving_config_id}`.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The resource IDs of the promote controls to be applied.
  final pulumi.Input<List<String>?>? promoteControlIds;
  /// The resource IDs of the redirect controls to be applied.
  final pulumi.Input<List<String>?>? redirectControlIds;
  /// 'The unique ID of the serving config. Currently only accepts "defaultSearch".'
  final pulumi.Input<String?>? servingConfigId;
  /// The resource IDs of the synonyms controls to be applied.
  final pulumi.Input<List<String>?>? synonymsControlIds;

  /// Creates a new [ServingConfigState].
  /// [boostControlIds] The resource IDs of the boost controls to be applied.
  /// [collectionId] The collection ID. Currently only accepts "defaultCollection".
  /// [engineId] The ID of the engine associated with the serving config.
  /// [filterControlIds] The resource IDs of the filter controls to be applied.
  /// [location] The geographic location where the data store should reside. The value can
  /// [name] The unique full resource name of the serving config. Values are of the format
  /// [project] The ID of the project in which the resource belongs.
  /// [promoteControlIds] The resource IDs of the promote controls to be applied.
  /// [redirectControlIds] The resource IDs of the redirect controls to be applied.
  /// [servingConfigId] 'The unique ID of the serving config. Currently only accepts "defaultSearch".'
  /// [synonymsControlIds] The resource IDs of the synonyms controls to be applied.
  const ServingConfigState({
    this.boostControlIds,
    this.collectionId,
    this.engineId,
    this.filterControlIds,
    this.location,
    this.name,
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
      'engineId': ?engineId,
      'filterControlIds': ?filterControlIds,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'promoteControlIds': ?promoteControlIds,
      'redirectControlIds': ?redirectControlIds,
      'servingConfigId': ?servingConfigId,
      'synonymsControlIds': ?synonymsControlIds,
    };
  }

  factory ServingConfigState.fromMap(Map<String, dynamic> map) {
    return ServingConfigState(
      boostControlIds: (() { final guardedValue = map['boostControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      collectionId: (() { final guardedValue = map['collectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineId: (() { final guardedValue = map['engineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterControlIds: (() { final guardedValue = map['filterControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promoteControlIds: (() { final guardedValue = map['promoteControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      redirectControlIds: (() { final guardedValue = map['redirectControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      servingConfigId: (() { final guardedValue = map['servingConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synonymsControlIds: (() { final guardedValue = map['synonymsControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
