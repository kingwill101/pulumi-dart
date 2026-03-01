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
    pulumi.Output<List<PreventionDiscoveryConfigAction>>? actions,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? displayName,
    pulumi.Output<List<PreventionDiscoveryConfigError>>? errors,
    pulumi.Output<List<String>>? inspectTemplates,
    pulumi.Output<String>? lastRunTime,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<PreventionDiscoveryConfigOrgConfig>? orgConfig,
    pulumi.Output<PreventionDiscoveryConfigOtherCloudStartingLocation>? otherCloudStartingLocation,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? status,
    pulumi.Output<List<PreventionDiscoveryConfigTarget>>? targets,
    pulumi.Output<String>? updateTime,
  }) :
      actions = pulumi.Input.asOptionalInput<List<PreventionDiscoveryConfigAction>>(actions),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      errors = pulumi.Input.asOptionalInput<List<PreventionDiscoveryConfigError>>(errors),
      inspectTemplates = pulumi.Input.asOptionalInput<List<String>>(inspectTemplates),
      lastRunTime = pulumi.Input.asOptionalInput<String>(lastRunTime),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      orgConfig = pulumi.Input.asOptionalInput<PreventionDiscoveryConfigOrgConfig>(orgConfig),
      otherCloudStartingLocation = pulumi.Input.asOptionalInput<PreventionDiscoveryConfigOtherCloudStartingLocation>(otherCloudStartingLocation),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      status = pulumi.Input.asOptionalInput<String>(status),
      targets = pulumi.Input.asOptionalInput<List<PreventionDiscoveryConfigTarget>>(targets),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      actions: map['actions'] == null ? null : pulumi.Output.create<List<PreventionDiscoveryConfigAction>>(pulumi.Input.decodeList<PreventionDiscoveryConfigAction>(map['actions'], (value) => PreventionDiscoveryConfigAction.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      errors: map['errors'] == null ? null : pulumi.Output.create<List<PreventionDiscoveryConfigError>>(pulumi.Input.decodeList<PreventionDiscoveryConfigError>(map['errors'], (value) => PreventionDiscoveryConfigError.fromMap((value as Map).cast<String, dynamic>()))),
      inspectTemplates: map['inspectTemplates'] == null ? null : pulumi.Output.create<List<String>>((map['inspectTemplates'] as List).cast<String>()),
      lastRunTime: map['lastRunTime'] == null ? null : pulumi.Output.create<String>(map['lastRunTime'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      orgConfig: map['orgConfig'] == null ? null : pulumi.Output.create<PreventionDiscoveryConfigOrgConfig>(PreventionDiscoveryConfigOrgConfig.fromMap((map['orgConfig'] as Map).cast<String, dynamic>())),
      otherCloudStartingLocation: map['otherCloudStartingLocation'] == null ? null : pulumi.Output.create<PreventionDiscoveryConfigOtherCloudStartingLocation>(PreventionDiscoveryConfigOtherCloudStartingLocation.fromMap((map['otherCloudStartingLocation'] as Map).cast<String, dynamic>())),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      targets: map['targets'] == null ? null : pulumi.Output.create<List<PreventionDiscoveryConfigTarget>>(pulumi.Input.decodeList<PreventionDiscoveryConfigTarget>(map['targets'], (value) => PreventionDiscoveryConfigTarget.fromMap((value as Map).cast<String, dynamic>()))),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

