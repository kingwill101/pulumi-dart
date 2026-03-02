// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MuteConfig resources.
class MuteConfigState {
  /// The time at which the mute config was created. This field is set by
  /// the server and will be ignored if provided on config creation.
  final pulumi.Input<String>? createTime;
  /// A description of the mute config.
  final pulumi.Input<String>? description;
  /// Optional. The expiry of the mute config. Only applicable for dynamic configs.
  /// If the expiry is set, when the config expires, it is removed from all findings.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to
  /// nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? expiryTime;
  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  final pulumi.Input<String>? filter;
  /// Email address of the user who last edited the mute config. This
  /// field is set by the server and will be ignored if provided on
  /// config creation or update.
  final pulumi.Input<String>? mostRecentEditor;
  /// Unique identifier provided by the client within the parent scope.
  final pulumi.Input<String>? muteConfigId;
  /// Name of the mute config. Its format is
  /// organizations/{organization}/muteConfigs/{configId},
  /// folders/{folder}/muteConfigs/{configId},
  /// or projects/{project}/muteConfigs/{configId}
  final pulumi.Input<String>? name;
  /// Resource name of the new mute configs's parent. Its format is
  /// "organizations/[organization_id]", "folders/[folder_id]", or
  /// "projects/[project_id]".
  final pulumi.Input<String>? parent;
  /// The type of the mute config, which determines what type of mute state the config affects.
  /// Default value is `DYNAMIC`.
  /// Possible values are: `MUTE_CONFIG_TYPE_UNSPECIFIED`, `STATIC`, `DYNAMIC`.
  final pulumi.Input<String>? type;
  /// Output only. The most recent time at which the mute config was
  /// updated. This field is set by the server and will be ignored if
  /// provided on config creation or update.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MuteConfigState].
  /// [createTime] The time at which the mute config was created. This field is set by
  /// [description] A description of the mute config.
  /// [expiryTime] Optional. The expiry of the mute config. Only applicable for dynamic configs.
  /// [filter] An expression that defines the filter to apply across create/update
  /// [mostRecentEditor] Email address of the user who last edited the mute config. This
  /// [muteConfigId] Unique identifier provided by the client within the parent scope.
  /// [name] Name of the mute config. Its format is
  /// [parent] Resource name of the new mute configs's parent. Its format is
  /// [type] The type of the mute config, which determines what type of mute state the config affects.
  /// [updateTime] Output only. The most recent time at which the mute config was
  MuteConfigState({
    this.createTime,
    this.description,
    this.expiryTime,
    this.filter,
    this.mostRecentEditor,
    this.muteConfigId,
    this.name,
    this.parent,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'expiryTime': ?expiryTime,
      'filter': ?filter,
      'mostRecentEditor': ?mostRecentEditor,
      'muteConfigId': ?muteConfigId,
      'name': ?name,
      'parent': ?parent,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory MuteConfigState.fromMap(Map<String, dynamic> map) {
    return MuteConfigState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      expiryTime: map['expiryTime'] == null ? null : (map['expiryTime'] as String).input(),
      filter: map['filter'] == null ? null : (map['filter'] as String).input(),
      mostRecentEditor: map['mostRecentEditor'] == null ? null : (map['mostRecentEditor'] as String).input(),
      muteConfigId: map['muteConfigId'] == null ? null : (map['muteConfigId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

