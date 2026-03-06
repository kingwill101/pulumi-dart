// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_fleet_default_member_config.dart';
import 'get_feature_resource_state.dart';
import 'get_feature_spec.dart';
import 'get_feature_state.dart';

/// Result data returned by getFeature.
class GetFeatureResult {
  final String createTime;
  final String deleteTime;
  final Map<String, String> effectiveLabels;
  final List<GetFeatureFleetDefaultMemberConfig> fleetDefaultMemberConfigs;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String location;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final List<GetFeatureResourceState> resourceStates;
  final List<GetFeatureSpec> specs;
  final List<GetFeatureState> states;
  final String updateTime;

  /// Creates a new [GetFeatureResult].
  /// [createTime] Required.
  /// [deleteTime] Required.
  /// [effectiveLabels] Required.
  /// [fleetDefaultMemberConfigs] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [location] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [resourceStates] Required.
  /// [specs] Required.
  /// [states] Required.
  /// [updateTime] Required.
  const GetFeatureResult({
    required this.createTime,
    required this.deleteTime,
    required this.effectiveLabels,
    required this.fleetDefaultMemberConfigs,
    required this.id,
    required this.labels,
    required this.location,
    required this.name,
    this.project,
    required this.pulumiLabels,
    required this.resourceStates,
    required this.specs,
    required this.states,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deleteTime': deleteTime,
      'effectiveLabels': effectiveLabels,
      'fleetDefaultMemberConfigs': pulumi.Input.encodeList<GetFeatureFleetDefaultMemberConfig, Map<String, dynamic>>(fleetDefaultMemberConfigs, (value) => value.toMap()),
      'id': id,
      'labels': labels,
      'location': location,
      'name': name,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'resourceStates': pulumi.Input.encodeList<GetFeatureResourceState, Map<String, dynamic>>(resourceStates, (value) => value.toMap()),
      'specs': pulumi.Input.encodeList<GetFeatureSpec, Map<String, dynamic>>(specs, (value) => value.toMap()),
      'states': pulumi.Input.encodeList<GetFeatureState, Map<String, dynamic>>(states, (value) => value.toMap()),
      'updateTime': updateTime,
    };
  }

  factory GetFeatureResult.fromMap(Map<String, dynamic> map) {
    return GetFeatureResult(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      fleetDefaultMemberConfigs: pulumi.Input.decodeList<GetFeatureFleetDefaultMemberConfig>(map['fleetDefaultMemberConfigs']!, (value) => GetFeatureFleetDefaultMemberConfig.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      resourceStates: pulumi.Input.decodeList<GetFeatureResourceState>(map['resourceStates']!, (value) => GetFeatureResourceState.fromMap((value as Map).cast<String, dynamic>())),
      specs: pulumi.Input.decodeList<GetFeatureSpec>(map['specs']!, (value) => GetFeatureSpec.fromMap((value as Map).cast<String, dynamic>())),
      states: pulumi.Input.decodeList<GetFeatureState>(map['states']!, (value) => GetFeatureState.fromMap((value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}

