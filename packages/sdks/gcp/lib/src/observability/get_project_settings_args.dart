// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_observability_get_project_settings_get_project_settings_args_doc}
/// Arguments for getProjectSettings.
/// {@endtemplate}
/// {@macro pulumi_observability_get_project_settings_get_project_settings_args_doc}
class GetProjectSettingsArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> project;

  /// Creates a new [GetProjectSettingsArgs].
  /// [location] Required.
  /// [project] Required.
  const GetProjectSettingsArgs({
    required this.location,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': project,
    };
  }

  factory GetProjectSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectSettingsArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
