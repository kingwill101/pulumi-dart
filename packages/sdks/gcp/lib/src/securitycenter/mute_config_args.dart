// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_mute_config_mute_config_args_doc}
/// The set of arguments for MuteConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_mute_config_mute_config_args_doc}
class MuteConfigArgs {
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
  final pulumi.Input<String> filter;
  /// Unique identifier provided by the client within the parent scope.
  final pulumi.Input<String> muteConfigId;
  /// Resource name of the new mute configs's parent. Its format is
  /// "organizations/[organization_id]", "folders/[folder_id]", or
  /// "projects/[project_id]".
  final pulumi.Input<String> parent;
  /// The type of the mute config, which determines what type of mute state the config affects.
  /// Default value is `DYNAMIC`.
  /// Possible values are: `MUTE_CONFIG_TYPE_UNSPECIFIED`, `STATIC`, `DYNAMIC`.
  final pulumi.Input<String>? type;

  /// Creates a new [MuteConfigArgs].
  /// [description] A description of the mute config.
  /// [expiryTime] Optional. The expiry of the mute config. Only applicable for dynamic configs.
  /// [filter] An expression that defines the filter to apply across create/update
  /// [muteConfigId] Unique identifier provided by the client within the parent scope.
  /// [parent] Resource name of the new mute configs's parent. Its format is
  /// [type] The type of the mute config, which determines what type of mute state the config affects.
  MuteConfigArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? expiryTime,
    required pulumi.Output<String> filter,
    required pulumi.Output<String> muteConfigId,
    required pulumi.Output<String> parent,
    pulumi.Output<String>? type,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      expiryTime = pulumi.Input.asOptionalInput<String>(expiryTime),
      filter = pulumi.Input.asInput<String>(filter),
      muteConfigId = pulumi.Input.asInput<String>(muteConfigId),
      parent = pulumi.Input.asInput<String>(parent),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expiryTime': ?expiryTime,
      'filter': filter,
      'muteConfigId': muteConfigId,
      'parent': parent,
      'type': ?type,
    };
  }

  factory MuteConfigArgs.fromMap(Map<String, dynamic> map) {
    return MuteConfigArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      expiryTime: map['expiryTime'] == null ? null : pulumi.Output.create<String>(map['expiryTime'] as String),
      filter: pulumi.Output.create<String>(map['filter'] as String),
      muteConfigId: pulumi.Output.create<String>(map['muteConfigId'] as String),
      parent: pulumi.Output.create<String>(map['parent'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

