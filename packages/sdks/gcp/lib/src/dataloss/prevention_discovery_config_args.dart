// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_action.dart';
import 'prevention_discovery_config_org_config.dart';
import 'prevention_discovery_config_other_cloud_starting_location.dart';
import 'prevention_discovery_config_target.dart';

/// {@template pulumi_dataloss_prevention_discovery_config_prevention_discovery_config_args_doc}
/// The set of arguments for PreventionDiscoveryConfig.
/// {@endtemplate}
/// {@macro pulumi_dataloss_prevention_discovery_config_prevention_discovery_config_args_doc}
class PreventionDiscoveryConfigArgs {
  /// Actions to execute at the completion of scanning
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDiscoveryConfigAction>>? actions;
  /// Display Name (max 1000 Chars)
  final pulumi.Input<String>? displayName;
  /// Detection logic for profile generation
  final pulumi.Input<List<String>>? inspectTemplates;
  /// Location to create the discovery config in.
  final pulumi.Input<String> location;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigOrgConfig>? orgConfig;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigOtherCloudStartingLocation>? otherCloudStartingLocation;
  /// The parent of the discovery config in any of the following formats:
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  final pulumi.Input<String> parent;
  /// Required. A status for this configuration
  /// Possible values are: `RUNNING`, `PAUSED`.
  final pulumi.Input<String>? status;
  /// Target to match against for determining what to scan and how frequently
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDiscoveryConfigTarget>>? targets;

  /// Creates a new [PreventionDiscoveryConfigArgs].
  /// [actions] Actions to execute at the completion of scanning
  /// [displayName] Display Name (max 1000 Chars)
  /// [inspectTemplates] Detection logic for profile generation
  /// [location] Location to create the discovery config in.
  /// [orgConfig] A nested object resource.
  /// [otherCloudStartingLocation] A nested object resource.
  /// [parent] The parent of the discovery config in any of the following formats:
  /// [status] Required. A status for this configuration
  /// [targets] Target to match against for determining what to scan and how frequently
  PreventionDiscoveryConfigArgs({
    this.actions,
    this.displayName,
    this.inspectTemplates,
    required this.location,
    this.orgConfig,
    this.otherCloudStartingLocation,
    required this.parent,
    this.status,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<PreventionDiscoveryConfigAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<PreventionDiscoveryConfigAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': ?displayName,
      'inspectTemplates': ?inspectTemplates,
      'location': location,
      'orgConfig': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigOrgConfig, Map<String, dynamic>>(orgConfig, (value) => value.toMap()),
      'otherCloudStartingLocation': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigOtherCloudStartingLocation, Map<String, dynamic>>(otherCloudStartingLocation, (value) => value.toMap()),
      'parent': parent,
      'status': ?status,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<PreventionDiscoveryConfigTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<PreventionDiscoveryConfigTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreventionDiscoveryConfigArgs.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigArgs(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionDiscoveryConfigAction>(guardedValue, (value) => PreventionDiscoveryConfigAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inspectTemplates: (() { final guardedValue = map['inspectTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      orgConfig: (() { final guardedValue = map['orgConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigOrgConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      otherCloudStartingLocation: (() { final guardedValue = map['otherCloudStartingLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigOtherCloudStartingLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionDiscoveryConfigTarget>(guardedValue, (value) => PreventionDiscoveryConfigTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

