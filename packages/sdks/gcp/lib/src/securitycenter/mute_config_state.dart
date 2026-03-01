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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? expiryTime,
    pulumi.Output<String>? filter,
    pulumi.Output<String>? mostRecentEditor,
    pulumi.Output<String>? muteConfigId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      expiryTime = pulumi.Input.asOptionalInput<String>(expiryTime),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      mostRecentEditor = pulumi.Input.asOptionalInput<String>(mostRecentEditor),
      muteConfigId = pulumi.Input.asOptionalInput<String>(muteConfigId),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      type = pulumi.Input.asOptionalInput<String>(type),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      expiryTime: map['expiryTime'] == null ? null : pulumi.Output.create<String>(map['expiryTime'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      mostRecentEditor: map['mostRecentEditor'] == null ? null : pulumi.Output.create<String>(map['mostRecentEditor'] as String),
      muteConfigId: map['muteConfigId'] == null ? null : pulumi.Output.create<String>(map['muteConfigId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

