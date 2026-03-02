// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v2_project_mute_config_v2_project_mute_config_args_doc}
/// The set of arguments for V2ProjectMuteConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v2_project_mute_config_v2_project_mute_config_args_doc}
class V2ProjectMuteConfigArgs {
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
  /// [description] A description of the mute config.
  /// [filter] An expression that defines the filter to apply across create/update
  /// [location] location Id is provided by project. If not provided, Use global as default.
  /// [muteConfigId] Unique identifier provided by the client within the parent scope.
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of the mute config.
  V2ProjectMuteConfigArgs({
    this.description,
    required this.filter,
    this.location,
    required this.muteConfigId,
    this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      filter: (map['filter'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      muteConfigId: (map['muteConfigId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

