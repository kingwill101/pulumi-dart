// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMuteConfig.
class GetMuteConfigResult {
  /// The time at which the mute config was created. This field is set by the server and will be ignored if provided on config creation.
  final String createTime;
  /// A description of the mute config.
  final String description;
  /// The human readable name to be displayed for the mute config.
  final String displayName;
  /// An expression that defines the filter to apply across create/update events of findings. While creating a filter string, be mindful of the scope in which the mute configuration is being created. E.g., If a filter contains project = X but is created under the project = Y scope, it might not match any findings. The following field and operator combinations are supported: * severity: `=`, `:` * category: `=`, `:` * resource.name: `=`, `:` * resource.project_name: `=`, `:` * resource.project_display_name: `=`, `:` * resource.folders.resource_folder: `=`, `:` * resource.parent_name: `=`, `:` * resource.parent_display_name: `=`, `:` * resource.type: `=`, `:` * finding_class: `=`, `:` * indicator.ip_addresses: `=`, `:` * indicator.domains: `=`, `:`
  final String filter;
  /// Email address of the user who last edited the mute config. This field is set by the server and will be ignored if provided on config creation or update.
  final String mostRecentEditor;
  /// This field will be ignored if provided on config creation. Format "organizations/{organization}/muteConfigs/{mute_config}" "folders/{folder}/muteConfigs/{mute_config}" "projects/{project}/muteConfigs/{mute_config}" "organizations/{organization}/locations/global/muteConfigs/{mute_config}" "folders/{folder}/locations/global/muteConfigs/{mute_config}" "projects/{project}/locations/global/muteConfigs/{mute_config}"
  final String name;
  /// The most recent time at which the mute config was updated. This field is set by the server and will be ignored if provided on config creation or update.
  final String updateTime;

  /// Creates a new [GetMuteConfigResult].
  /// [createTime] The time at which the mute config was created. This field is set by the server and will be ignored if provided on config creation.
  /// [description] A description of the mute config.
  /// [displayName] The human readable name to be displayed for the mute config.
  /// [filter] An expression that defines the filter to apply across create/update events of findings. While creating a filter string, be mindful of the scope in which the mute configuration is being created. E.g., If a filter contains project = X but is created under the project = Y scope, it might not match any findings. The following field and operator combinations are supported: * severity: `=`, `:` * category: `=`, `:` * resource.name: `=`, `:` * resource.project_name: `=`, `:` * resource.project_display_name: `=`, `:` * resource.folders.resource_folder: `=`, `:` * resource.parent_name: `=`, `:` * resource.parent_display_name: `=`, `:` * resource.type: `=`, `:` * finding_class: `=`, `:` * indicator.ip_addresses: `=`, `:` * indicator.domains: `=`, `:`
  /// [mostRecentEditor] Email address of the user who last edited the mute config. This field is set by the server and will be ignored if provided on config creation or update.
  /// [name] This field will be ignored if provided on config creation. Format "organizations/{organization}/muteConfigs/{mute_config}" "folders/{folder}/muteConfigs/{mute_config}" "projects/{project}/muteConfigs/{mute_config}" "organizations/{organization}/locations/global/muteConfigs/{mute_config}" "folders/{folder}/locations/global/muteConfigs/{mute_config}" "projects/{project}/locations/global/muteConfigs/{mute_config}"
  /// [updateTime] The most recent time at which the mute config was updated. This field is set by the server and will be ignored if provided on config creation or update.
  const GetMuteConfigResult({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.filter,
    required this.mostRecentEditor,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'filter': filter,
      'mostRecentEditor': mostRecentEditor,
      'name': name,
      'updateTime': updateTime,
    };
  }

  factory GetMuteConfigResult.fromMap(Map<String, dynamic> map) {
    return GetMuteConfigResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      filter: map['filter'] as String,
      mostRecentEditor: map['mostRecentEditor'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
