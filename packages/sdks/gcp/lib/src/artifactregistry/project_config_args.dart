// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_config_platform_logs_config.dart';

/// {@template pulumi_artifactregistry_project_config_project_config_args_doc}
/// The set of arguments for ProjectConfig.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_project_config_project_config_args_doc}
class ProjectConfigArgs {
  /// The name of the location this config is located in.
  final pulumi.Input<String>? location;
  /// Configuration for platform logs.
  /// Structure is documented below.
  final pulumi.Input<ProjectConfigPlatformLogsConfig>? platformLogsConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectConfigArgs].
  /// [location] The name of the location this config is located in.
  /// [platformLogsConfig] Configuration for platform logs.
  /// [project] The ID of the project in which the resource belongs.
  const ProjectConfigArgs({
    this.location,
    this.platformLogsConfig,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'platformLogsConfig': ?pulumi.Input.mapOptionalInputValue<ProjectConfigPlatformLogsConfig, Map<String, dynamic>>(platformLogsConfig, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory ProjectConfigArgs.fromMap(Map<String, dynamic> map) {
    return ProjectConfigArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platformLogsConfig: (() { final guardedValue = map['platformLogsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectConfigPlatformLogsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
