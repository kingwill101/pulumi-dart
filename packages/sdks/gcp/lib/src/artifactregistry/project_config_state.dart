// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_config_platform_logs_config.dart';

/// Input properties used for looking up and filtering ProjectConfig resources.
class ProjectConfigState {
  /// The name of the location this config is located in.
  final pulumi.Input<String?>? location;
  /// The name of the project's config.
  /// Always of the form: projects/{project}/locations/{location}/projectConfig
  final pulumi.Input<String?>? name;
  /// Configuration for platform logs.
  /// Structure is documented below.
  final pulumi.Input<ProjectConfigPlatformLogsConfig?>? platformLogsConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [ProjectConfigState].
  /// [location] The name of the location this config is located in.
  /// [name] The name of the project's config.
  /// [platformLogsConfig] Configuration for platform logs.
  /// [project] The ID of the project in which the resource belongs.
  const ProjectConfigState({
    this.location,
    this.name,
    this.platformLogsConfig,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'platformLogsConfig': ?pulumi.Input.mapOptionalInputValue<ProjectConfigPlatformLogsConfig, Map<String, dynamic>>(platformLogsConfig, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory ProjectConfigState.fromMap(Map<String, dynamic> map) {
    return ProjectConfigState(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platformLogsConfig: (() { final guardedValue = map['platformLogsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectConfigPlatformLogsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
