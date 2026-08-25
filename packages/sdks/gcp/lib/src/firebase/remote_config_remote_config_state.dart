// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_config_remote_config_condition.dart';
import 'remote_config_remote_config_parameter.dart';
import 'remote_config_remote_config_parameter_group.dart';
import 'remote_config_remote_config_version.dart';

/// Input properties used for looking up and filtering RemoteConfigRemoteConfig resources.
class RemoteConfigRemoteConfigState {
  /// A list of conditions in descending order by priority.
  /// The values of the condition names must be unique.
  /// Structure is documented below.
  final pulumi.Input<List<RemoteConfigRemoteConfigCondition>?>? conditions;
  /// (Output)
  /// Display name.
  final pulumi.Input<String?>? name;
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
  final pulumi.Input<List<RemoteConfigRemoteConfigParameterGroup>?>? parameterGroups;
  /// Map of parameter keys to their optional default values and optional
  /// conditional values.
  /// Structure is documented below.
  final pulumi.Input<List<RemoteConfigRemoteConfigParameter>?>? parameters;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Contains all metadata about a particular version of the Remote Config
  /// template.
  /// All fields are set at the time the specified Remote Config template was
  /// written.
  /// Structure is documented below.
  final pulumi.Input<List<RemoteConfigRemoteConfigVersion>?>? versions;

  /// Creates a new [RemoteConfigRemoteConfigState].
  /// [conditions] A list of conditions in descending order by priority.
  /// [name] (Output)
  /// [parameterGroups] Map of parameter group names to their descriptions and grouped parameters.
  /// [parameters] Map of parameter keys to their optional default values and optional
  /// [project] The ID of the project in which the resource belongs.
  /// [versions] Contains all metadata about a particular version of the Remote Config
  const RemoteConfigRemoteConfigState({
    this.conditions,
    this.name,
    this.parameterGroups,
    this.parameters,
    this.project,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<RemoteConfigRemoteConfigCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<RemoteConfigRemoteConfigCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'parameterGroups': ?pulumi.Input.mapOptionalInputValue<List<RemoteConfigRemoteConfigParameterGroup>, List<Map<String, dynamic>>>(parameterGroups, (value) => pulumi.Input.encodeList<RemoteConfigRemoteConfigParameterGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<RemoteConfigRemoteConfigParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<RemoteConfigRemoteConfigParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'versions': ?pulumi.Input.mapOptionalInputValue<List<RemoteConfigRemoteConfigVersion>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<RemoteConfigRemoteConfigVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RemoteConfigRemoteConfigState.fromMap(Map<String, dynamic> map) {
    return RemoteConfigRemoteConfigState(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RemoteConfigRemoteConfigCondition>(guardedValue, (value) => RemoteConfigRemoteConfigCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterGroups: (() { final guardedValue = map['parameterGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RemoteConfigRemoteConfigParameterGroup>(guardedValue, (value) => RemoteConfigRemoteConfigParameterGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RemoteConfigRemoteConfigParameter>(guardedValue, (value) => RemoteConfigRemoteConfigParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RemoteConfigRemoteConfigVersion>(guardedValue, (value) => RemoteConfigRemoteConfigVersion.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
