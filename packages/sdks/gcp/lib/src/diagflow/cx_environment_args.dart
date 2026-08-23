// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_environment_version_config.dart';

/// {@template pulumi_diagflow_cx_environment_cx_environment_args_doc}
/// The set of arguments for CxEnvironment.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_environment_cx_environment_args_doc}
class CxEnvironmentArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;
  /// The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  final pulumi.Input<String> displayName;
  /// The Agent to create an Environment for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;.
  final pulumi.Input<String>? parent;
  /// A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned.
  /// Structure is documented below.
  final pulumi.Input<List<CxEnvironmentVersionConfig>> versionConfigs;

  /// Creates a new [CxEnvironmentArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [displayName] The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  /// [parent] The Agent to create an Environment for.
  /// [versionConfigs] A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned.
  const CxEnvironmentArgs({
    this.deletionPolicy,
    this.description,
    required this.displayName,
    this.parent,
    required this.versionConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': displayName,
      'parent': ?parent,
      'versionConfigs': pulumi.Input.mapInputValue<List<CxEnvironmentVersionConfig>, List<Map<String, dynamic>>>(versionConfigs, (value) => pulumi.Input.encodeList<CxEnvironmentVersionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CxEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return CxEnvironmentArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<CxEnvironmentVersionConfig>(map['versionConfigs']!, (value) => CxEnvironmentVersionConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
