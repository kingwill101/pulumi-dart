// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_config_remote_config_condition.dart';
import 'remote_config_remote_config_parameter.dart';
import 'remote_config_remote_config_parameter_group.dart';

/// {@template pulumi_firebase_remote_config_remote_config_remote_config_remote_config_args_doc}
/// The set of arguments for RemoteConfigRemoteConfig.
/// {@endtemplate}
/// {@macro pulumi_firebase_remote_config_remote_config_remote_config_remote_config_args_doc}
class RemoteConfigRemoteConfigArgs {
  /// A list of conditions in descending order by priority.
  /// The values of the condition names must be unique.
  /// Structure is documented below.
  final pulumi.Input<List<RemoteConfigRemoteConfigCondition>>? conditions;
  /// Map of parameter group names to their descriptions and grouped parameters.
  /// A group's name is mutable but must be unique among groups in the config.
  /// The name is limited to 256 characters and intended to be human-readable.
  /// Any Unicode characters are allowed.
  /// Groups have a list of parameters which allows users of the API to group
  /// parameters that are associated with the same feature or theme together for
  /// easy organizational access.
  /// For example, a parameter group with the name "Search V2" may have the
  /// `description` "New mobile search view" and contain parameters for the new
  /// search's layout and font.
  /// Structure is documented below.
  final pulumi.Input<List<RemoteConfigRemoteConfigParameterGroup>>? parameterGroups;
  /// Map of parameter keys to their optional default values and optional
  /// conditional values.
  /// Structure is documented below.
  final pulumi.Input<List<RemoteConfigRemoteConfigParameter>>? parameters;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [RemoteConfigRemoteConfigArgs].
  /// [conditions] A list of conditions in descending order by priority.
  /// [parameterGroups] Map of parameter group names to their descriptions and grouped parameters.
  /// [parameters] Map of parameter keys to their optional default values and optional
  /// [project] The ID of the project in which the resource belongs.
  const RemoteConfigRemoteConfigArgs({
    this.conditions,
    this.parameterGroups,
    this.parameters,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<RemoteConfigRemoteConfigCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<RemoteConfigRemoteConfigCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameterGroups': ?pulumi.Input.mapOptionalInputValue<List<RemoteConfigRemoteConfigParameterGroup>, List<Map<String, dynamic>>>(parameterGroups, (value) => pulumi.Input.encodeList<RemoteConfigRemoteConfigParameterGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<RemoteConfigRemoteConfigParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<RemoteConfigRemoteConfigParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
    };
  }

  factory RemoteConfigRemoteConfigArgs.fromMap(Map<String, dynamic> map) {
    return RemoteConfigRemoteConfigArgs(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RemoteConfigRemoteConfigCondition>(guardedValue, (value) => RemoteConfigRemoteConfigCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parameterGroups: (() { final guardedValue = map['parameterGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RemoteConfigRemoteConfigParameterGroup>(guardedValue, (value) => RemoteConfigRemoteConfigParameterGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RemoteConfigRemoteConfigParameter>(guardedValue, (value) => RemoteConfigRemoteConfigParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
