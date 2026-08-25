// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_fleet_default_member_config.dart';
import 'get_feature_resource_state.dart';
import 'get_feature_spec.dart';
import 'get_feature_state.dart';

/// Result data returned by getFeature.
class GetFeatureResult {
  final String? createTime;
  final String? deleteTime;
  final String? deletionPolicy;
  final Map<String, String>? effectiveLabels;
  final List<GetFeatureFleetDefaultMemberConfig>? fleetDefaultMemberConfigs;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? location;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final List<GetFeatureResourceState>? resourceStates;
  final List<GetFeatureSpec>? specs;
  final List<GetFeatureState>? states;
  final String? updateTime;

  /// Creates a new [GetFeatureResult].
  /// [createTime] Optional.
  /// [deleteTime] Optional.
  /// [deletionPolicy] Optional.
  /// [effectiveLabels] Optional.
  /// [fleetDefaultMemberConfigs] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [resourceStates] Optional.
  /// [specs] Optional.
  /// [states] Optional.
  /// [updateTime] Optional.
  const GetFeatureResult({
    this.createTime,
    this.deleteTime,
    this.deletionPolicy,
    this.effectiveLabels,
    this.fleetDefaultMemberConfigs,
    this.id,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.resourceStates,
    this.specs,
    this.states,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'fleetDefaultMemberConfigs': ?(() { final guardedValue = fleetDefaultMemberConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFeatureFleetDefaultMemberConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'resourceStates': ?(() { final guardedValue = resourceStates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFeatureResourceState, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'specs': ?(() { final guardedValue = specs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFeatureSpec, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'states': ?(() { final guardedValue = states; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFeatureState, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updateTime': ?updateTime,
    };
  }

  factory GetFeatureResult.fromMap(Map<String, dynamic> map) {
    return GetFeatureResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      fleetDefaultMemberConfigs: (() { final guardedValue = map['fleetDefaultMemberConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFeatureFleetDefaultMemberConfig>(guardedValue, (value) => GetFeatureFleetDefaultMemberConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      resourceStates: (() { final guardedValue = map['resourceStates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFeatureResourceState>(guardedValue, (value) => GetFeatureResourceState.fromMap((value as Map).cast<String, dynamic>())); })(),
      specs: (() { final guardedValue = map['specs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFeatureSpec>(guardedValue, (value) => GetFeatureSpec.fromMap((value as Map).cast<String, dynamic>())); })(),
      states: (() { final guardedValue = map['states']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFeatureState>(guardedValue, (value) => GetFeatureState.fromMap((value as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
