// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MuteConfig resources.
class MuteConfigState {
  /// The time at which the mute config was created. This field is set by
  /// the server and will be ignored if provided on config creation.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// "organizations/[organizationId]", "folders/[folderId]", or
  /// "projects/[projectId]".
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the mute config.
  /// [expiryTime] Optional. The expiry of the mute config. Only applicable for dynamic configs.
  /// [filter] An expression that defines the filter to apply across create/update
  /// [mostRecentEditor] Email address of the user who last edited the mute config. This
  /// [muteConfigId] Unique identifier provided by the client within the parent scope.
  /// [name] Name of the mute config. Its format is
  /// [parent] Resource name of the new mute configs's parent. Its format is
  /// [type] The type of the mute config, which determines what type of mute state the config affects.
  /// [updateTime] Output only. The most recent time at which the mute config was
  const MuteConfigState({
    this.createTime,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiryTime: (() { final guardedValue = map['expiryTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mostRecentEditor: (() { final guardedValue = map['mostRecentEditor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      muteConfigId: (() { final guardedValue = map['muteConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
