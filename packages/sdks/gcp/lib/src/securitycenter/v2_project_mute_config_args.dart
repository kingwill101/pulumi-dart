// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v2_project_mute_config_v2_project_mute_config_args_doc}
/// The set of arguments for V2ProjectMuteConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v2_project_mute_config_v2_project_mute_config_args_doc}
class V2ProjectMuteConfigArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A description of the mute config.
  final pulumi.Input<String>? description;
  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  final pulumi.Input<String> filter;
  /// location Id is provided by project. If not provided, Use global as default.
  final pulumi.Input<String>? location;
  /// Unique identifier provided by the client within the parent scope.
  final pulumi.Input<String> muteConfigId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The type of the mute config.
  final pulumi.Input<String> type;

  /// Creates a new [V2ProjectMuteConfigArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the mute config.
  /// [filter] An expression that defines the filter to apply across create/update
  /// [location] location Id is provided by project. If not provided, Use global as default.
  /// [muteConfigId] Unique identifier provided by the client within the parent scope.
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of the mute config.
  const V2ProjectMuteConfigArgs({
    this.deletionPolicy,
    this.description,
    required this.filter,
    this.location,
    required this.muteConfigId,
    this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'filter': filter,
      'location': ?location,
      'muteConfigId': muteConfigId,
      'project': ?project,
      'type': type,
    };
  }

  factory V2ProjectMuteConfigArgs.fromMap(Map<String, dynamic> map) {
    return V2ProjectMuteConfigArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      muteConfigId: pulumi.Input.fromValue(map['muteConfigId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
