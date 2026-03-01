// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering V2OrganizationMuteConfig resources.
class V2OrganizationMuteConfigState {
  /// The time at which the mute config was created. This field is set by
  /// the server and will be ignored if provided on config creation.
  final pulumi.Input<String>? createTime;
  /// A description of the mute config.
  final pulumi.Input<String>? description;
  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  final pulumi.Input<String>? filter;
  /// location Id is provided by organization. If not provided, Use global as default.
  final pulumi.Input<String>? location;
  /// Email address of the user who last edited the mute config. This
  /// field is set by the server and will be ignored if provided on
  /// config creation or update.
  final pulumi.Input<String>? mostRecentEditor;
  /// Unique identifier provided by the client within the parent scope.
  final pulumi.Input<String>? muteConfigId;
  /// Name of the mute config. Its format is
  /// organizations/{organization}/locations/global/muteConfigs/{configId},
  /// folders/{folder}/locations/global/muteConfigs/{configId},
  /// or projects/{project}/locations/global/muteConfigs/{configId}
  final pulumi.Input<String>? name;
  /// The organization whose Cloud Security Command Center the Mute
  /// Config lives in.
  final pulumi.Input<String>? organization;
  /// The type of the mute config.
  final pulumi.Input<String>? type;
  /// Output only. The most recent time at which the mute config was
  /// updated. This field is set by the server and will be ignored if
  /// provided on config creation or update.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [V2OrganizationMuteConfigState].
  /// [createTime] The time at which the mute config was created. This field is set by
  /// [description] A description of the mute config.
  /// [filter] An expression that defines the filter to apply across create/update
  /// [location] location Id is provided by organization. If not provided, Use global as default.
  /// [mostRecentEditor] Email address of the user who last edited the mute config. This
  /// [muteConfigId] Unique identifier provided by the client within the parent scope.
  /// [name] Name of the mute config. Its format is
  /// [organization] The organization whose Cloud Security Command Center the Mute
  /// [type] The type of the mute config.
  /// [updateTime] Output only. The most recent time at which the mute config was
  V2OrganizationMuteConfigState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? filter,
    pulumi.Output<String>? location,
    pulumi.Output<String>? mostRecentEditor,
    pulumi.Output<String>? muteConfigId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? organization,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      location = pulumi.Input.asOptionalInput<String>(location),
      mostRecentEditor = pulumi.Input.asOptionalInput<String>(mostRecentEditor),
      muteConfigId = pulumi.Input.asOptionalInput<String>(muteConfigId),
      name = pulumi.Input.asOptionalInput<String>(name),
      organization = pulumi.Input.asOptionalInput<String>(organization),
      type = pulumi.Input.asOptionalInput<String>(type),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'filter': ?filter,
      'location': ?location,
      'mostRecentEditor': ?mostRecentEditor,
      'muteConfigId': ?muteConfigId,
      'name': ?name,
      'organization': ?organization,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory V2OrganizationMuteConfigState.fromMap(Map<String, dynamic> map) {
    return V2OrganizationMuteConfigState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mostRecentEditor: map['mostRecentEditor'] == null ? null : pulumi.Output.create<String>(map['mostRecentEditor'] as String),
      muteConfigId: map['muteConfigId'] == null ? null : pulumi.Output.create<String>(map['muteConfigId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organization: map['organization'] == null ? null : pulumi.Output.create<String>(map['organization'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

