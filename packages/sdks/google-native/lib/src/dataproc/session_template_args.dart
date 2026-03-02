// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config.dart';
import 'jupyter_config.dart';
import 'runtime_config.dart';

/// {@template pulumi_dataproc_v1_session_template_args_doc}
/// The set of arguments for SessionTemplate.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_session_template_args_doc}
class SessionTemplateArgs {
  /// Optional. Brief description of the template.
  final pulumi.Input<String>? description;
  /// Optional. Environment configuration for session execution.
  final pulumi.Input<EnvironmentConfig>? environmentConfig;
  /// Optional. Jupyter session config.
  final pulumi.Input<JupyterConfig>? jupyterSession;
  /// Optional. Labels to associate with sessions created using this template. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The resource name of the session template.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. Runtime configuration for session execution.
  final pulumi.Input<RuntimeConfig>? runtimeConfig;

  /// Creates a new [SessionTemplateArgs].
  /// [description] Optional. Brief description of the template.
  /// [environmentConfig] Optional. Environment configuration for session execution.
  /// [jupyterSession] Optional. Jupyter session config.
  /// [labels] Optional. Labels to associate with sessions created using this template. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  /// [location] Optional.
  /// [name] The resource name of the session template.
  /// [project] Optional.
  /// [runtimeConfig] Optional. Runtime configuration for session execution.
  SessionTemplateArgs({
    this.description,
    this.environmentConfig,
    this.jupyterSession,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.runtimeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'environmentConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfig, Map<String, dynamic>>(environmentConfig, (value) => value.toMap()),
      'jupyterSession': ?pulumi.Input.mapOptionalInputValue<JupyterConfig, Map<String, dynamic>>(jupyterSession, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'runtimeConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeConfig, Map<String, dynamic>>(runtimeConfig, (value) => value.toMap()),
    };
  }

  factory SessionTemplateArgs.fromMap(Map<String, dynamic> map) {
    return SessionTemplateArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      environmentConfig: map['environmentConfig'] == null ? null : (EnvironmentConfig.fromMap((map['environmentConfig']! as Map).cast<String, dynamic>())).input(),
      jupyterSession: map['jupyterSession'] == null ? null : (JupyterConfig.fromMap((map['jupyterSession']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      runtimeConfig: map['runtimeConfig'] == null ? null : (RuntimeConfig.fromMap((map['runtimeConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

