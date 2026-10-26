// ignore_for_file: unused_element, unnecessary_cast

import 'environment_config_response.dart';
import 'jupyter_config_response.dart';
import 'runtime_config_response.dart';

/// Result data returned by getSessionTemplate.
class GetSessionTemplateResult {
  /// The time when the template was created.
  final String? createTime;
  /// The email address of the user who created the template.
  final String? creator;
  /// Optional. Brief description of the template.
  final String? description;
  /// Optional. Environment configuration for session execution.
  final EnvironmentConfigResponse? environmentConfig;
  /// Optional. Jupyter session config.
  final JupyterConfigResponse? jupyterSession;
  /// Optional. Labels to associate with sessions created using this template. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  final Map<String, String>? labels;
  /// The resource name of the session template.
  final String? name;
  /// Optional. Runtime configuration for session execution.
  final RuntimeConfigResponse? runtimeConfig;
  /// The time the template was last updated.
  final String? updateTime;
  /// A session template UUID (Unique Universal Identifier). The service generates this value when it creates the session template.
  final String? uuid;

  /// Creates a new [GetSessionTemplateResult].
  /// [createTime] The time when the template was created.
  /// [creator] The email address of the user who created the template.
  /// [description] Optional. Brief description of the template.
  /// [environmentConfig] Optional. Environment configuration for session execution.
  /// [jupyterSession] Optional. Jupyter session config.
  /// [labels] Optional. Labels to associate with sessions created using this template. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  /// [name] The resource name of the session template.
  /// [runtimeConfig] Optional. Runtime configuration for session execution.
  /// [updateTime] The time the template was last updated.
  /// [uuid] A session template UUID (Unique Universal Identifier). The service generates this value when it creates the session template.
  const GetSessionTemplateResult({
    this.createTime,
    this.creator,
    this.description,
    this.environmentConfig,
    this.jupyterSession,
    this.labels,
    this.name,
    this.runtimeConfig,
    this.updateTime,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'creator': ?creator,
      'description': ?description,
      'environmentConfig': ?environmentConfig?.toMap(),
      'jupyterSession': ?jupyterSession?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'runtimeConfig': ?runtimeConfig?.toMap(),
      'updateTime': ?updateTime,
      'uuid': ?uuid,
    };
  }

  factory GetSessionTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetSessionTemplateResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environmentConfig: (() { final guardedValue = map['environmentConfig']; if (guardedValue == null) return null; return EnvironmentConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      jupyterSession: (() { final guardedValue = map['jupyterSession']; if (guardedValue == null) return null; return JupyterConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtimeConfig: (() { final guardedValue = map['runtimeConfig']; if (guardedValue == null) return null; return RuntimeConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
