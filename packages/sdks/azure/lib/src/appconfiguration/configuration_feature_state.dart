// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_feature_targeting_filter.dart';
import 'configuration_feature_timewindow_filter.dart';

/// Input properties used for looking up and filtering ConfigurationFeature resources.
class ConfigurationFeatureState {
  /// Specifies the id of the App Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? configurationStoreId;
  /// The description of the App Configuration Feature.
  final pulumi.Input<String>? description;
  /// The status of the App Configuration Feature. By default, this is set to false.
  final pulumi.Input<bool>? enabled;
  final pulumi.Input<String>? etag;
  /// The key of the App Configuration Feature. The value for `name` will be used if this is unspecified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? key;
  /// The label of the App Configuration Feature. Changing this forces a new resource to be created.
  final pulumi.Input<String>? label;
  /// Should this App Configuration Feature be Locked to prevent changes?
  final pulumi.Input<bool>? locked;
  /// The name of the App Configuration Feature. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A number representing the value of the percentage required to enable this feature.
  final pulumi.Input<double>? percentageFilterValue;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `targeting_filter` block as defined below.
  final pulumi.Input<List<ConfigurationFeatureTargetingFilter>>? targetingFilters;
  /// A `timewindow_filter` block as defined below.
  final pulumi.Input<List<ConfigurationFeatureTimewindowFilter>>? timewindowFilters;

  /// Creates a new [ConfigurationFeatureState].
  /// [configurationStoreId] Specifies the id of the App Configuration. Changing this forces a new resource to be created.
  /// [description] The description of the App Configuration Feature.
  /// [enabled] The status of the App Configuration Feature. By default, this is set to false.
  /// [etag] Optional.
  /// [key] The key of the App Configuration Feature. The value for `name` will be used if this is unspecified. Changing this forces a new resource to be created.
  /// [label] The label of the App Configuration Feature. Changing this forces a new resource to be created.
  /// [locked] Should this App Configuration Feature be Locked to prevent changes?
  /// [name] The name of the App Configuration Feature. Changing this forces a new resource to be created.
  /// [percentageFilterValue] A number representing the value of the percentage required to enable this feature.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetingFilters] A `targeting_filter` block as defined below.
  /// [timewindowFilters] A `timewindow_filter` block as defined below.
  const ConfigurationFeatureState({
    this.configurationStoreId,
    this.description,
    this.enabled,
    this.etag,
    this.key,
    this.label,
    this.locked,
    this.name,
    this.percentageFilterValue,
    this.tags,
    this.targetingFilters,
    this.timewindowFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationStoreId': ?configurationStoreId,
      'description': ?description,
      'enabled': ?enabled,
      'etag': ?etag,
      'key': ?key,
      'label': ?label,
      'locked': ?locked,
      'name': ?name,
      'percentageFilterValue': ?percentageFilterValue,
      'tags': ?tags,
      'targetingFilters': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationFeatureTargetingFilter>, List<Map<String, dynamic>>>(targetingFilters, (value) => pulumi.Input.encodeList<ConfigurationFeatureTargetingFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timewindowFilters': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationFeatureTimewindowFilter>, List<Map<String, dynamic>>>(timewindowFilters, (value) => pulumi.Input.encodeList<ConfigurationFeatureTimewindowFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConfigurationFeatureState.fromMap(Map<String, dynamic> map) {
    return ConfigurationFeatureState(
      configurationStoreId: (() { final guardedValue = map['configurationStoreId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locked: (() { final guardedValue = map['locked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentageFilterValue: (() { final guardedValue = map['percentageFilterValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetingFilters: (() { final guardedValue = map['targetingFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationFeatureTargetingFilter>(guardedValue, (value) => ConfigurationFeatureTargetingFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timewindowFilters: (() { final guardedValue = map['timewindowFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationFeatureTimewindowFilter>(guardedValue, (value) => ConfigurationFeatureTimewindowFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

