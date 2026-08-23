// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_mute_config_args_doc}
/// The set of arguments for MuteConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_mute_config_args_doc}
class MuteConfigArgs {
  /// A description of the mute config.
  final pulumi.Input<String>? description;
  /// The human readable name to be displayed for the mute config.
  final pulumi.Input<String>? displayName;
  /// An expression that defines the filter to apply across create/update events of findings. While creating a filter string, be mindful of the scope in which the mute configuration is being created. E.g., If a filter contains project = X but is created under the project = Y scope, it might not match any findings. The following field and operator combinations are supported: * severity: `=`, `:` * category: `=`, `:` * resource.name: `=`, `:` * resource.project_name: `=`, `:` * resource.project_display_name: `=`, `:` * resource.folders.resource_folder: `=`, `:` * resource.parent_name: `=`, `:` * resource.parent_display_name: `=`, `:` * resource.type: `=`, `:` * finding_class: `=`, `:` * indicator.ip_addresses: `=`, `:` * indicator.domains: `=`, `:`
  final pulumi.Input<String> filter;
  /// Required. Unique identifier provided by the client within the parent scope. It must consist of only lowercase letters, numbers, and hyphens, must start with a letter, must end with either a letter or a number, and must be 63 characters or less.
  final pulumi.Input<String> muteConfigId;
  /// This field will be ignored if provided on config creation. Format "organizations/{organization}/muteConfigs/{mute_config}" "folders/{folder}/muteConfigs/{mute_config}" "projects/{project}/muteConfigs/{mute_config}" "organizations/{organization}/locations/global/muteConfigs/{mute_config}" "folders/{folder}/locations/global/muteConfigs/{mute_config}" "projects/{project}/locations/global/muteConfigs/{mute_config}"
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [MuteConfigArgs].
  /// [description] A description of the mute config.
  /// [displayName] The human readable name to be displayed for the mute config.
  /// [filter] An expression that defines the filter to apply across create/update events of findings. While creating a filter string, be mindful of the scope in which the mute configuration is being created. E.g., If a filter contains project = X but is created under the project = Y scope, it might not match any findings. The following field and operator combinations are supported: * severity: `=`, `:` * category: `=`, `:` * resource.name: `=`, `:` * resource.project_name: `=`, `:` * resource.project_display_name: `=`, `:` * resource.folders.resource_folder: `=`, `:` * resource.parent_name: `=`, `:` * resource.parent_display_name: `=`, `:` * resource.type: `=`, `:` * finding_class: `=`, `:` * indicator.ip_addresses: `=`, `:` * indicator.domains: `=`, `:`
  /// [muteConfigId] Required. Unique identifier provided by the client within the parent scope. It must consist of only lowercase letters, numbers, and hyphens, must start with a letter, must end with either a letter or a number, and must be 63 characters or less.
  /// [name] This field will be ignored if provided on config creation. Format "organizations/{organization}/muteConfigs/{mute_config}" "folders/{folder}/muteConfigs/{mute_config}" "projects/{project}/muteConfigs/{mute_config}" "organizations/{organization}/locations/global/muteConfigs/{mute_config}" "folders/{folder}/locations/global/muteConfigs/{mute_config}" "projects/{project}/locations/global/muteConfigs/{mute_config}"
  /// [project] Optional.
  const MuteConfigArgs({
    this.description,
    this.displayName,
    required this.filter,
    required this.muteConfigId,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'filter': filter,
      'muteConfigId': muteConfigId,
      'name': ?name,
      'project': ?project,
    };
  }

  factory MuteConfigArgs.fromMap(Map<String, dynamic> map) {
    return MuteConfigArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      muteConfigId: pulumi.Input.fromValue(map['muteConfigId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
