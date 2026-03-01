// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_environment_version_config.dart';

/// Input properties used for looking up and filtering CxEnvironment resources.
class CxEnvironmentState {
  /// The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;
  /// The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  final pulumi.Input<String>? displayName;
  /// The name of the environment.
  final pulumi.Input<String>? name;
  /// The Agent to create an Environment for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final pulumi.Input<String>? parent;
  /// Update time of this environment. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;
  /// A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned.
  /// Structure is documented below.
  final pulumi.Input<List<CxEnvironmentVersionConfig>>? versionConfigs;

  /// Creates a new [CxEnvironmentState].
  /// [description] The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [displayName] The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  /// [name] The name of the environment.
  /// [parent] The Agent to create an Environment for.
  /// [updateTime] Update time of this environment. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  /// [versionConfigs] A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned.
  CxEnvironmentState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? updateTime,
    pulumi.Output<List<CxEnvironmentVersionConfig>>? versionConfigs,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      versionConfigs = pulumi.Input.asOptionalInput<List<CxEnvironmentVersionConfig>>(versionConfigs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'parent': ?parent,
      'updateTime': ?updateTime,
      'versionConfigs': ?pulumi.Input.mapOptionalInputValue<List<CxEnvironmentVersionConfig>, List<Map<String, dynamic>>>(versionConfigs, (value) => pulumi.Input.encodeList<CxEnvironmentVersionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CxEnvironmentState.fromMap(Map<String, dynamic> map) {
    return CxEnvironmentState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      versionConfigs: map['versionConfigs'] == null ? null : pulumi.Output.create<List<CxEnvironmentVersionConfig>>(pulumi.Input.decodeList<CxEnvironmentVersionConfig>(map['versionConfigs'], (value) => CxEnvironmentVersionConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

