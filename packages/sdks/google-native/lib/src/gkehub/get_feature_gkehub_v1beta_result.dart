// ignore_for_file: unused_element, unnecessary_cast

import 'common_feature_spec_response_gkehub_v1beta.dart';
import 'common_feature_state_response_gkehub_v1beta.dart';
import 'common_fleet_default_member_config_spec_response_gkehub_v1beta.dart';
import 'feature_resource_state_response_gkehub_v1beta.dart';

/// Result data returned by getFeature.
class GetFeatureGkehubV1betaResult {
  /// When the Feature resource was created.
  final String createTime;
  /// When the Feature resource was deleted.
  final String deleteTime;
  /// Optional. Feature configuration applicable to all memberships of the fleet.
  final CommonFleetDefaultMemberConfigSpecResponseGkehubV1beta fleetDefaultMemberConfig;
  /// Labels for this Feature.
  final Map<String, String> labels;
  /// Optional. Membership-specific configuration for this Feature. If this Feature does not support any per-Membership configuration, this field may be unused. The keys indicate which Membership the configuration is for, in the form: `projects/{p}/locations/{l}/memberships/{m}` Where {p} is the project, {l} is a valid location and {m} is a valid Membership in this project at that location. {p} WILL match the Feature's project. {p} will always be returned as the project number, but the project ID is also accepted during input. If the same Membership is specified in the map twice (using the project ID form, and the project number form), exactly ONE of the entries will be saved, with no guarantees as to which. For this reason, it is recommended the same format be used for all entries when mutating a Feature.
  final Map<String, String> membershipSpecs;
  /// Membership-specific Feature status. If this Feature does report any per-Membership status, this field may be unused. The keys indicate which Membership the state is for, in the form: `projects/{p}/locations/{l}/memberships/{m}` Where {p} is the project number, {l} is a valid location and {m} is a valid Membership in this project at that location. {p} MUST match the Feature's project number.
  final Map<String, String> membershipStates;
  /// The full, unique name of this Feature resource in the format `projects/*/locations/*/features/*`.
  final String name;
  /// State of the Feature resource itself.
  final FeatureResourceStateResponseGkehubV1beta resourceState;
  /// Optional. Scope-specific configuration for this Feature. If this Feature does not support any per-Scope configuration, this field may be unused. The keys indicate which Scope the configuration is for, in the form: `projects/{p}/locations/global/scopes/{s}` Where {p} is the project, {s} is a valid Scope in this project. {p} WILL match the Feature's project. {p} will always be returned as the project number, but the project ID is also accepted during input. If the same Scope is specified in the map twice (using the project ID form, and the project number form), exactly ONE of the entries will be saved, with no guarantees as to which. For this reason, it is recommended the same format be used for all entries when mutating a Feature.
  final Map<String, String> scopeSpecs;
  /// Scope-specific Feature status. If this Feature does report any per-Scope status, this field may be unused. The keys indicate which Scope the state is for, in the form: `projects/{p}/locations/global/scopes/{s}` Where {p} is the project, {s} is a valid Scope in this project. {p} WILL match the Feature's project.
  final Map<String, String> scopeStates;
  /// Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.
  final CommonFeatureSpecResponseGkehubV1beta spec;
  /// The Hub-wide Feature state.
  final CommonFeatureStateResponseGkehubV1beta state;
  /// When the Feature resource was last updated.
  final String updateTime;

  /// Creates a new [GetFeatureGkehubV1betaResult].
  /// [createTime] When the Feature resource was created.
  /// [deleteTime] When the Feature resource was deleted.
  /// [fleetDefaultMemberConfig] Optional. Feature configuration applicable to all memberships of the fleet.
  /// [labels] Labels for this Feature.
  /// [membershipSpecs] Optional. Membership-specific configuration for this Feature. If this Feature does not support any per-Membership configuration, this field may be unused. The keys indicate which Membership the configuration is for, in the form: `projects/{p}/locations/{l}/memberships/{m}` Where {p} is the project, {l} is a valid location and {m} is a valid Membership in this project at that location. {p} WILL match the Feature's project. {p} will always be returned as the project number, but the project ID is also accepted during input. If the same Membership is specified in the map twice (using the project ID form, and the project number form), exactly ONE of the entries will be saved, with no guarantees as to which. For this reason, it is recommended the same format be used for all entries when mutating a Feature.
  /// [membershipStates] Membership-specific Feature status. If this Feature does report any per-Membership status, this field may be unused. The keys indicate which Membership the state is for, in the form: `projects/{p}/locations/{l}/memberships/{m}` Where {p} is the project number, {l} is a valid location and {m} is a valid Membership in this project at that location. {p} MUST match the Feature's project number.
  /// [name] The full, unique name of this Feature resource in the format `projects/*/locations/*/features/*`.
  /// [resourceState] State of the Feature resource itself.
  /// [scopeSpecs] Optional. Scope-specific configuration for this Feature. If this Feature does not support any per-Scope configuration, this field may be unused. The keys indicate which Scope the configuration is for, in the form: `projects/{p}/locations/global/scopes/{s}` Where {p} is the project, {s} is a valid Scope in this project. {p} WILL match the Feature's project. {p} will always be returned as the project number, but the project ID is also accepted during input. If the same Scope is specified in the map twice (using the project ID form, and the project number form), exactly ONE of the entries will be saved, with no guarantees as to which. For this reason, it is recommended the same format be used for all entries when mutating a Feature.
  /// [scopeStates] Scope-specific Feature status. If this Feature does report any per-Scope status, this field may be unused. The keys indicate which Scope the state is for, in the form: `projects/{p}/locations/global/scopes/{s}` Where {p} is the project, {s} is a valid Scope in this project. {p} WILL match the Feature's project.
  /// [spec] Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.
  /// [state] The Hub-wide Feature state.
  /// [updateTime] When the Feature resource was last updated.
  GetFeatureGkehubV1betaResult({
    required this.createTime,
    required this.deleteTime,
    required this.fleetDefaultMemberConfig,
    required this.labels,
    required this.membershipSpecs,
    required this.membershipStates,
    required this.name,
    required this.resourceState,
    required this.scopeSpecs,
    required this.scopeStates,
    required this.spec,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deleteTime': deleteTime,
      'fleetDefaultMemberConfig': fleetDefaultMemberConfig.toMap(),
      'labels': labels,
      'membershipSpecs': membershipSpecs,
      'membershipStates': membershipStates,
      'name': name,
      'resourceState': resourceState.toMap(),
      'scopeSpecs': scopeSpecs,
      'scopeStates': scopeStates,
      'spec': spec.toMap(),
      'state': state.toMap(),
      'updateTime': updateTime,
    };
  }

  factory GetFeatureGkehubV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetFeatureGkehubV1betaResult(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      fleetDefaultMemberConfig: CommonFleetDefaultMemberConfigSpecResponseGkehubV1beta.fromMap((map['fleetDefaultMemberConfig']! as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      membershipSpecs: (map['membershipSpecs'] as Map).cast<String, String>(),
      membershipStates: (map['membershipStates'] as Map).cast<String, String>(),
      name: map['name'] as String,
      resourceState: FeatureResourceStateResponseGkehubV1beta.fromMap((map['resourceState']! as Map).cast<String, dynamic>()),
      scopeSpecs: (map['scopeSpecs'] as Map).cast<String, String>(),
      scopeStates: (map['scopeStates'] as Map).cast<String, String>(),
      spec: CommonFeatureSpecResponseGkehubV1beta.fromMap((map['spec']! as Map).cast<String, dynamic>()),
      state: CommonFeatureStateResponseGkehubV1beta.fromMap((map['state']! as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}

