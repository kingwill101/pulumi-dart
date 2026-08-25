// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_mute_config_mute_config_args_doc}
/// The set of arguments for MuteConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_mute_config_mute_config_args_doc}
class MuteConfigArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A description of the mute config.
  final pulumi.Input<String?>? description;
  /// Optional. The expiry of the mute config. Only applicable for dynamic configs.
  /// If the expiry is set, when the config expires, it is removed from all findings.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to
  /// nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? expiryTime;
  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  final pulumi.Input<String> filter;
  /// Unique identifier provided by the client within the parent scope.
  final pulumi.Input<String> muteConfigId;
  /// Resource name of the new mute configs's parent. Its format is
  /// "organizations/[organizationId]", "folders/[folderId]", or
  /// "projects/[projectId]".
  final pulumi.Input<String> parent;
  /// The type of the mute config, which determines what type of mute state the config affects.
  /// Default value is `DYNAMIC`.
  /// Possible values are: `MUTE_CONFIG_TYPE_UNSPECIFIED`, `STATIC`, `DYNAMIC`.
  final pulumi.Input<String?>? type;

  /// Creates a new [MuteConfigArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the mute config.
  /// [expiryTime] Optional. The expiry of the mute config. Only applicable for dynamic configs.
  /// [filter] An expression that defines the filter to apply across create/update
  /// [muteConfigId] Unique identifier provided by the client within the parent scope.
  /// [parent] Resource name of the new mute configs's parent. Its format is
  /// [type] The type of the mute config, which determines what type of mute state the config affects.
  const MuteConfigArgs({
    this.deletionPolicy,
    this.description,
    this.expiryTime,
    required this.filter,
    required this.muteConfigId,
    required this.parent,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiryTime: (() { final guardedValue = map['expiryTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      muteConfigId: pulumi.Input.fromValue(map['muteConfigId'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
