// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_template_environment_config.dart';
import 'session_template_jupyter_session.dart';
import 'session_template_runtime_config.dart';

/// {@template pulumi_dataproc_session_template_session_template_args_doc}
/// The set of arguments for SessionTemplate.
/// {@endtemplate}
/// {@macro pulumi_dataproc_session_template_session_template_args_doc}
class SessionTemplateArgs {
  /// Environment configuration for the session execution.
  /// Structure is documented below.
  final pulumi.Input<SessionTemplateEnvironmentConfig>? environmentConfig;
  /// Jupyter configuration for an interactive session.
  /// Structure is documented below.
  final pulumi.Input<SessionTemplateJupyterSession>? jupyterSession;
  /// The labels to associate with this session template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location in which the session template will be created in.
  final pulumi.Input<String>? location;
  /// The resource name of the session template in the following format:
  /// projects/{project}/locations/{location}/sessionTemplates/{template_id}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Runtime configuration for the session template.
  /// Structure is documented below.
  final pulumi.Input<SessionTemplateRuntimeConfig>? runtimeConfig;
  /// Spark connect configuration for an interactive session.
  final pulumi.Input<Map<String, dynamic>>? sparkConnectSession;

  /// Creates a new [SessionTemplateArgs].
  /// [environmentConfig] Environment configuration for the session execution.
  /// [jupyterSession] Jupyter configuration for an interactive session.
  /// [labels] The labels to associate with this session template.
  /// [location] The location in which the session template will be created in.
  /// [name] The resource name of the session template in the following format:
  /// [project] The ID of the project in which the resource belongs.
  /// [runtimeConfig] Runtime configuration for the session template.
  /// [sparkConnectSession] Spark connect configuration for an interactive session.
  const SessionTemplateArgs({
    this.environmentConfig,
    this.jupyterSession,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.runtimeConfig,
    this.sparkConnectSession,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentConfig': ?pulumi.Input.mapOptionalInputValue<SessionTemplateEnvironmentConfig, Map<String, dynamic>>(environmentConfig, (value) => value.toMap()),
      'jupyterSession': ?pulumi.Input.mapOptionalInputValue<SessionTemplateJupyterSession, Map<String, dynamic>>(jupyterSession, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'runtimeConfig': ?pulumi.Input.mapOptionalInputValue<SessionTemplateRuntimeConfig, Map<String, dynamic>>(runtimeConfig, (value) => value.toMap()),
      'sparkConnectSession': ?sparkConnectSession,
    };
  }

  factory SessionTemplateArgs.fromMap(Map<String, dynamic> map) {
    return SessionTemplateArgs(
      environmentConfig: (() { final guardedValue = map['environmentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SessionTemplateEnvironmentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jupyterSession: (() { final guardedValue = map['jupyterSession']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SessionTemplateJupyterSession.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeConfig: (() { final guardedValue = map['runtimeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SessionTemplateRuntimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkConnectSession: (() { final guardedValue = map['sparkConnectSession']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

