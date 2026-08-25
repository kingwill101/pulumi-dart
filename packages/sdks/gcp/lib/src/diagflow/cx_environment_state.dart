// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_environment_version_config.dart';

/// Input properties used for looking up and filtering CxEnvironment resources.
class CxEnvironmentState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String?>? description;
  /// The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  final pulumi.Input<String?>? displayName;
  /// The name of the environment.
  final pulumi.Input<String?>? name;
  /// The Agent to create an Environment for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;.
  final pulumi.Input<String?>? parent;
  /// Update time of this environment. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? updateTime;
  /// A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned.
  /// Structure is documented below.
  final pulumi.Input<List<CxEnvironmentVersionConfig>?>? versionConfigs;

  /// Creates a new [CxEnvironmentState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [displayName] The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  /// [name] The name of the environment.
  /// [parent] The Agent to create an Environment for.
  /// [updateTime] Update time of this environment. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  /// [versionConfigs] A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned.
  const CxEnvironmentState({
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.name,
    this.parent,
    this.updateTime,
    this.versionConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionConfigs: (() { final guardedValue = map['versionConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CxEnvironmentVersionConfig>(guardedValue, (value) => CxEnvironmentVersionConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
