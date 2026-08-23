// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config.dart';
import 'jupyter_config.dart';
import 'runtime_config.dart';

/// {@template pulumi_dataproc_v1_session_args_doc}
/// The set of arguments for Session.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_session_args_doc}
class SessionArgs {
  /// Optional. Environment configuration for the session execution.
  final pulumi.Input<EnvironmentConfig>? environmentConfig;
  /// Optional. Jupyter session config.
  final pulumi.Input<JupyterConfig>? jupyterSession;
  /// Optional. The labels to associate with the session. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The resource name of the session.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. A unique ID used to identify the request. If the service receives two CreateSessionRequests (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateSessionRequest)s with the same ID, the second request is ignored, and the first Session is created and stored in the backend.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;
  /// Optional. Runtime configuration for the session execution.
  final pulumi.Input<RuntimeConfig>? runtimeConfig;
  /// Required. The ID to use for the session, which becomes the final component of the session's resource name.This value must be 4-63 characters. Valid characters are /a-z-/.
  final pulumi.Input<String> sessionId;
  /// Optional. The session template used by the session.Only resource names, including project ID and location, are valid.Example: * https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/sessionTemplates/[template_id] * projects/[project_id]/locations/[dataproc_region]/sessionTemplates/[template_id]The template must be in the same project and Dataproc region as the session.
  final pulumi.Input<String>? sessionTemplate;
  /// Optional. The email address of the user who owns the session.
  final pulumi.Input<String>? user;

  /// Creates a new [SessionArgs].
  /// [environmentConfig] Optional. Environment configuration for the session execution.
  /// [jupyterSession] Optional. Jupyter session config.
  /// [labels] Optional. The labels to associate with the session. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  /// [location] Optional.
  /// [name] The resource name of the session.
  /// [project] Optional.
  /// [requestId] Optional. A unique ID used to identify the request. If the service receives two CreateSessionRequests (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateSessionRequest)s with the same ID, the second request is ignored, and the first Session is created and stored in the backend.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [runtimeConfig] Optional. Runtime configuration for the session execution.
  /// [sessionId] Required. The ID to use for the session, which becomes the final component of the session's resource name.This value must be 4-63 characters. Valid characters are /a-z-/.
  /// [sessionTemplate] Optional. The session template used by the session.Only resource names, including project ID and location, are valid.Example: * https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/sessionTemplates/[template_id] * projects/[project_id]/locations/[dataproc_region]/sessionTemplates/[template_id]The template must be in the same project and Dataproc region as the session.
  /// [user] Optional. The email address of the user who owns the session.
  const SessionArgs({
    this.environmentConfig,
    this.jupyterSession,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    this.runtimeConfig,
    required this.sessionId,
    this.sessionTemplate,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfig, Map<String, dynamic>>(environmentConfig, (value) => value.toMap()),
      'jupyterSession': ?pulumi.Input.mapOptionalInputValue<JupyterConfig, Map<String, dynamic>>(jupyterSession, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'runtimeConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeConfig, Map<String, dynamic>>(runtimeConfig, (value) => value.toMap()),
      'sessionId': sessionId,
      'sessionTemplate': ?sessionTemplate,
      'user': ?user,
    };
  }

  factory SessionArgs.fromMap(Map<String, dynamic> map) {
    return SessionArgs(
      environmentConfig: (() { final guardedValue = map['environmentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jupyterSession: (() { final guardedValue = map['jupyterSession']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JupyterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeConfig: (() { final guardedValue = map['runtimeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sessionId: pulumi.Input.fromValue(map['sessionId'] as String),
      sessionTemplate: (() { final guardedValue = map['sessionTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
