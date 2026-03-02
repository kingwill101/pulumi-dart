// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_action.dart';
import 'prevention_discovery_config_error.dart';
import 'prevention_discovery_config_org_config.dart';
import 'prevention_discovery_config_other_cloud_starting_location.dart';
import 'prevention_discovery_config_target.dart';

/// Input properties used for looking up and filtering PreventionDiscoveryConfig resources.
class PreventionDiscoveryConfigState {
  /// Actions to execute at the completion of scanning
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDiscoveryConfigAction>>? actions;
  /// Output only. The creation timestamp of a DiscoveryConfig.
  final pulumi.Input<String>? createTime;
  /// Display Name (max 1000 Chars)
  final pulumi.Input<String>? displayName;
  /// Output only. A stream of errors encountered when the config was activated. Repeated errors may result in the config automatically being paused. Output only field. Will return the last 100 errors. Whenever the config is modified this list will be cleared.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDiscoveryConfigError>>? errors;
  /// Detection logic for profile generation
  final pulumi.Input<List<String>>? inspectTemplates;
  /// Output only. The timestamp of the last time this config was executed
  final pulumi.Input<String>? lastRunTime;
  /// Location to create the discovery config in.
  final pulumi.Input<String>? location;
  /// Unique resource name for the DiscoveryConfig, assigned by the service when the DiscoveryConfig is created.
  final pulumi.Input<String>? name;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigOrgConfig>? orgConfig;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigOtherCloudStartingLocation>? otherCloudStartingLocation;
  /// The parent of the discovery config in any of the following formats:
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  final pulumi.Input<String>? parent;
  /// Required. A status for this configuration
  /// Possible values are: `RUNNING`, `PAUSED`.
  final pulumi.Input<String>? status;
  /// Target to match against for determining what to scan and how frequently
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDiscoveryConfigTarget>>? targets;
  /// Output only. The last update timestamp of a DiscoveryConfig.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [PreventionDiscoveryConfigState].
  /// [actions] Actions to execute at the completion of scanning
  /// [createTime] Output only. The creation timestamp of a DiscoveryConfig.
  /// [displayName] Display Name (max 1000 Chars)
  /// [errors] Output only. A stream of errors encountered when the config was activated. Repeated errors may result in the config automatically being paused. Output only field. Will return the last 100 errors. Whenever the config is modified this list will be cleared.
  /// [inspectTemplates] Detection logic for profile generation
  /// [lastRunTime] Output only. The timestamp of the last time this config was executed
  /// [location] Location to create the discovery config in.
  /// [name] Unique resource name for the DiscoveryConfig, assigned by the service when the DiscoveryConfig is created.
  /// [orgConfig] A nested object resource.
  /// [otherCloudStartingLocation] A nested object resource.
  /// [parent] The parent of the discovery config in any of the following formats:
  /// [status] Required. A status for this configuration
  /// [targets] Target to match against for determining what to scan and how frequently
  /// [updateTime] Output only. The last update timestamp of a DiscoveryConfig.
  PreventionDiscoveryConfigState({
    this.actions,
    this.createTime,
    this.displayName,
    this.errors,
    this.inspectTemplates,
    this.lastRunTime,
    this.location,
    this.name,
    this.orgConfig,
    this.otherCloudStartingLocation,
    this.parent,
    this.status,
    this.targets,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<PreventionDiscoveryConfigAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<PreventionDiscoveryConfigAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'displayName': ?displayName,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<PreventionDiscoveryConfigError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<PreventionDiscoveryConfigError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inspectTemplates': ?inspectTemplates,
      'lastRunTime': ?lastRunTime,
      'location': ?location,
      'name': ?name,
      'orgConfig': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigOrgConfig, Map<String, dynamic>>(orgConfig, (value) => value.toMap()),
      'otherCloudStartingLocation': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigOtherCloudStartingLocation, Map<String, dynamic>>(otherCloudStartingLocation, (value) => value.toMap()),
      'parent': ?parent,
      'status': ?status,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<PreventionDiscoveryConfigTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<PreventionDiscoveryConfigTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory PreventionDiscoveryConfigState.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigState(
      actions: map['actions'] == null ? null : (pulumi.Input.decodeList<PreventionDiscoveryConfigAction>(map['actions'], (value) => PreventionDiscoveryConfigAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      errors: map['errors'] == null ? null : (pulumi.Input.decodeList<PreventionDiscoveryConfigError>(map['errors'], (value) => PreventionDiscoveryConfigError.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inspectTemplates: map['inspectTemplates'] == null ? null : ((map['inspectTemplates'] as List).cast<String>()).input(),
      lastRunTime: map['lastRunTime'] == null ? null : (map['lastRunTime'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      orgConfig: map['orgConfig'] == null ? null : (PreventionDiscoveryConfigOrgConfig.fromMap((map['orgConfig'] as Map).cast<String, dynamic>())).input(),
      otherCloudStartingLocation: map['otherCloudStartingLocation'] == null ? null : (PreventionDiscoveryConfigOtherCloudStartingLocation.fromMap((map['otherCloudStartingLocation'] as Map).cast<String, dynamic>())).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      targets: map['targets'] == null ? null : (pulumi.Input.decodeList<PreventionDiscoveryConfigTarget>(map['targets'], (value) => PreventionDiscoveryConfigTarget.fromMap((value as Map).cast<String, dynamic>()))).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

