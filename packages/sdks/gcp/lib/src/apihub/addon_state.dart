// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addon_config.dart';

/// Input properties used for looking up and filtering Addon resources.
class AddonState {
  /// The ID of the addon.
  final pulumi.Input<String?>? addonId;
  /// The Vertex AI region where the BoostSpec Gemini model calls run for this API Hub instance.
  final pulumi.Input<String?>? boostSpecGeminiRegionId;
  /// The configuration of the addon.
  /// Structure is documented below.
  final pulumi.Input<AddonConfig?>? config;
  /// The time at which the addon was created.
  final pulumi.Input<String?>? createTime;
  /// The data source on which the addon operates.
  final pulumi.Input<String?>? dataSource;
  /// The description of the addon.
  final pulumi.Input<String?>? description;
  /// The display name of the addon.
  final pulumi.Input<String?>? displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Identifier. The name of the addon. Format: `projects/{project}/locations/{location}/addons/{addon}`.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The state of the addon.
  final pulumi.Input<String?>? state;
  /// The time at which the addon was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AddonState].
  /// [addonId] The ID of the addon.
  /// [boostSpecGeminiRegionId] The Vertex AI region where the BoostSpec Gemini model calls run for this API Hub instance.
  /// [config] The configuration of the addon.
  /// [createTime] The time at which the addon was created.
  /// [dataSource] The data source on which the addon operates.
  /// [description] The description of the addon.
  /// [displayName] The display name of the addon.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The name of the addon. Format: `projects/{project}/locations/{location}/addons/{addon}`.
  /// [project] The ID of the project in which the resource belongs.
  /// [state] The state of the addon.
  /// [updateTime] The time at which the addon was last updated.
  const AddonState({
    this.addonId,
    this.boostSpecGeminiRegionId,
    this.config,
    this.createTime,
    this.dataSource,
    this.description,
    this.displayName,
    this.location,
    this.name,
    this.project,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonId': ?addonId,
      'boostSpecGeminiRegionId': ?boostSpecGeminiRegionId,
      'config': ?pulumi.Input.mapOptionalInputValue<AddonConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'createTime': ?createTime,
      'dataSource': ?dataSource,
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory AddonState.fromMap(Map<String, dynamic> map) {
    return AddonState(
      addonId: (() { final guardedValue = map['addonId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      boostSpecGeminiRegionId: (() { final guardedValue = map['boostSpecGeminiRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddonConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
