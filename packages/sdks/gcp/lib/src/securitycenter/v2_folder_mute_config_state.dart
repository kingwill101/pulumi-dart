// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering V2FolderMuteConfig resources.
class V2FolderMuteConfigState {
  /// The time at which the mute config was created. This field is set by
  /// the server and will be ignored if provided on config creation.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A description of the mute config.
  final pulumi.Input<String?>? description;
  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  final pulumi.Input<String?>? filter;
  /// The folder whose Cloud Security Command Center the Mute
  /// Config lives in.
  final pulumi.Input<String?>? folder;
  /// location Id is provided by folder. If not provided, Use global as default.
  final pulumi.Input<String?>? location;
  /// Email address of the user who last edited the mute config. This
  /// field is set by the server and will be ignored if provided on
  /// config creation or update.
  final pulumi.Input<String?>? mostRecentEditor;
  /// Unique identifier provided by the client within the parent scope.
  final pulumi.Input<String?>? muteConfigId;
  /// Name of the mute config. Its format is
  /// organizations/{organization}/locations/global/muteConfigs/{configId},
  /// folders/{folder}/locations/global/muteConfigs/{configId},
  /// or projects/{project}/locations/global/muteConfigs/{configId}
  final pulumi.Input<String?>? name;
  /// The type of the mute config.
  final pulumi.Input<String?>? type;
  /// Output only. The most recent time at which the mute config was
  /// updated. This field is set by the server and will be ignored if
  /// provided on config creation or update.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [V2FolderMuteConfigState].
  /// [createTime] The time at which the mute config was created. This field is set by
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the mute config.
  /// [filter] An expression that defines the filter to apply across create/update
  /// [folder] The folder whose Cloud Security Command Center the Mute
  /// [location] location Id is provided by folder. If not provided, Use global as default.
  /// [mostRecentEditor] Email address of the user who last edited the mute config. This
  /// [muteConfigId] Unique identifier provided by the client within the parent scope.
  /// [name] Name of the mute config. Its format is
  /// [type] The type of the mute config.
  /// [updateTime] Output only. The most recent time at which the mute config was
  const V2FolderMuteConfigState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.filter,
    this.folder,
    this.location,
    this.mostRecentEditor,
    this.muteConfigId,
    this.name,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'filter': ?filter,
      'folder': ?folder,
      'location': ?location,
      'mostRecentEditor': ?mostRecentEditor,
      'muteConfigId': ?muteConfigId,
      'name': ?name,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory V2FolderMuteConfigState.fromMap(Map<String, dynamic> map) {
    return V2FolderMuteConfigState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mostRecentEditor: (() { final guardedValue = map['mostRecentEditor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      muteConfigId: (() { final guardedValue = map['muteConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
