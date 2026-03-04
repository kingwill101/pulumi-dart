// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_template_environment_config.dart';
import 'session_template_jupyter_session.dart';
import 'session_template_runtime_config.dart';

/// Input properties used for looking up and filtering SessionTemplate resources.
class SessionTemplateState {
  /// The time when the session template was created.
  final pulumi.Input<String>? createTime;

  /// The email address of the user who created the session template.
  final pulumi.Input<String>? creator;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

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

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Runtime configuration for the session template.
  /// Structure is documented below.
  final pulumi.Input<SessionTemplateRuntimeConfig>? runtimeConfig;

  /// Spark connect configuration for an interactive session.
  final pulumi.Input<Map<String, dynamic>>? sparkConnectSession;

  /// The time when the session template was updated.
  final pulumi.Input<String>? updateTime;

  /// A session template UUID (Unique Universal Identifier). The service generates this value when it creates the session template.
  final pulumi.Input<String>? uuid;

  /// Creates a new [SessionTemplateState].
  /// [createTime] The time when the session template was created.
  /// [creator] The email address of the user who created the session template.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [environmentConfig] Environment configuration for the session execution.
  /// [jupyterSession] Jupyter configuration for an interactive session.
  /// [labels] The labels to associate with this session template.
  /// [location] The location in which the session template will be created in.
  /// [name] The resource name of the session template in the following format:
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [runtimeConfig] Runtime configuration for the session template.
  /// [sparkConnectSession] Spark connect configuration for an interactive session.
  /// [updateTime] The time when the session template was updated.
  /// [uuid] A session template UUID (Unique Universal Identifier). The service generates this value when it creates the session template.
  SessionTemplateState({
    this.createTime,
    this.creator,
    this.effectiveLabels,
    this.environmentConfig,
    this.jupyterSession,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.runtimeConfig,
    this.sparkConnectSession,
    this.updateTime,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'creator': ?creator,
      'effectiveLabels': ?effectiveLabels,
      'environmentConfig':
          ?pulumi.Input.mapOptionalInputValue<
            SessionTemplateEnvironmentConfig,
            Map<String, dynamic>
          >(environmentConfig, (value) => value.toMap()),
      'jupyterSession':
          ?pulumi.Input.mapOptionalInputValue<
            SessionTemplateJupyterSession,
            Map<String, dynamic>
          >(jupyterSession, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'runtimeConfig':
          ?pulumi.Input.mapOptionalInputValue<
            SessionTemplateRuntimeConfig,
            Map<String, dynamic>
          >(runtimeConfig, (value) => value.toMap()),
      'sparkConnectSession': ?sparkConnectSession,
      'updateTime': ?updateTime,
      'uuid': ?uuid,
    };
  }

  factory SessionTemplateState.fromMap(Map<String, dynamic> map) {
    return SessionTemplateState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      creator: (() {
        final guardedValue = map['creator'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      environmentConfig: (() {
        final guardedValue = map['environmentConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SessionTemplateEnvironmentConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      jupyterSession: (() {
        final guardedValue = map['jupyterSession'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SessionTemplateJupyterSession.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      runtimeConfig: (() {
        final guardedValue = map['runtimeConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SessionTemplateRuntimeConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sparkConnectSession: (() {
        final guardedValue = map['sparkConnectSession'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uuid: (() {
        final guardedValue = map['uuid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
