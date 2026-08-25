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
  final pulumi.Input<List<PreventionDiscoveryConfigAction>?>? actions;
  /// Output only. The creation timestamp of a DiscoveryConfig.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Display Name (max 1000 Chars)
  final pulumi.Input<String?>? displayName;
  /// Output only. A stream of errors encountered when the config was activated. Repeated errors may result in the config automatically being paused. Output only field. Will return the last 100 errors. Whenever the config is modified this list will be cleared.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDiscoveryConfigError>?>? errors;
  /// Detection logic for profile generation
  final pulumi.Input<List<String>?>? inspectTemplates;
  /// Output only. The timestamp of the last time this config was executed
  final pulumi.Input<String?>? lastRunTime;
  /// Location to create the discovery config in.
  final pulumi.Input<String?>? location;
  /// Unique resource name for the DiscoveryConfig, assigned by the service when the DiscoveryConfig is created.
  final pulumi.Input<String?>? name;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigOrgConfig?>? orgConfig;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigOtherCloudStartingLocation?>? otherCloudStartingLocation;
  /// The parent of the discovery config in any of the following formats:
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  final pulumi.Input<String?>? parent;
  /// Required. A status for this configuration
  /// Possible values are: `RUNNING`, `PAUSED`.
  final pulumi.Input<String?>? status;
  /// Target to match against for determining what to scan and how frequently
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDiscoveryConfigTarget>?>? targets;
  /// Output only. The last update timestamp of a DiscoveryConfig.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [PreventionDiscoveryConfigState].
  /// [actions] Actions to execute at the completion of scanning
  /// [createTime] Output only. The creation timestamp of a DiscoveryConfig.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const PreventionDiscoveryConfigState({
    this.actions,
    this.createTime,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionDiscoveryConfigAction>(guardedValue, (value) => PreventionDiscoveryConfigAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionDiscoveryConfigError>(guardedValue, (value) => PreventionDiscoveryConfigError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inspectTemplates: (() { final guardedValue = map['inspectTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lastRunTime: (() { final guardedValue = map['lastRunTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgConfig: (() { final guardedValue = map['orgConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigOrgConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      otherCloudStartingLocation: (() { final guardedValue = map['otherCloudStartingLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigOtherCloudStartingLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionDiscoveryConfigTarget>(guardedValue, (value) => PreventionDiscoveryConfigTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
