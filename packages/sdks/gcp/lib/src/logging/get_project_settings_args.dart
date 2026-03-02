// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_get_project_settings_get_project_settings_args_doc}
/// Arguments for getProjectSettings.
/// {@endtemplate}
/// {@macro pulumi_logging_get_project_settings_get_project_settings_args_doc}
class GetProjectSettingsArgs {
  /// The ID of the project for which to retrieve settings.
  final pulumi.Input<String> project;

  /// Creates a new [GetProjectSettingsArgs].
  /// [project] The ID of the project for which to retrieve settings.
  GetProjectSettingsArgs({
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': project,
    };
  }

  factory GetProjectSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectSettingsArgs(
      project: (map['project'] as String).input(),
    );
  }
}

