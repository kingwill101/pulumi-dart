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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? creator,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<SessionTemplateEnvironmentConfig>? environmentConfig,
    pulumi.Output<SessionTemplateJupyterSession>? jupyterSession,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<SessionTemplateRuntimeConfig>? runtimeConfig,
    pulumi.Output<Map<String, dynamic>>? sparkConnectSession,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? uuid,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      creator = pulumi.Input.asOptionalInput<String>(creator),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      environmentConfig = pulumi.Input.asOptionalInput<SessionTemplateEnvironmentConfig>(environmentConfig),
      jupyterSession = pulumi.Input.asOptionalInput<SessionTemplateJupyterSession>(jupyterSession),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      runtimeConfig = pulumi.Input.asOptionalInput<SessionTemplateRuntimeConfig>(runtimeConfig),
      sparkConnectSession = pulumi.Input.asOptionalInput<Map<String, dynamic>>(sparkConnectSession),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      uuid = pulumi.Input.asOptionalInput<String>(uuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'creator': ?creator,
      'effectiveLabels': ?effectiveLabels,
      'environmentConfig': ?pulumi.Input.mapOptionalInputValue<SessionTemplateEnvironmentConfig, Map<String, dynamic>>(environmentConfig, (value) => value.toMap()),
      'jupyterSession': ?pulumi.Input.mapOptionalInputValue<SessionTemplateJupyterSession, Map<String, dynamic>>(jupyterSession, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'runtimeConfig': ?pulumi.Input.mapOptionalInputValue<SessionTemplateRuntimeConfig, Map<String, dynamic>>(runtimeConfig, (value) => value.toMap()),
      'sparkConnectSession': ?sparkConnectSession,
      'updateTime': ?updateTime,
      'uuid': ?uuid,
    };
  }

  factory SessionTemplateState.fromMap(Map<String, dynamic> map) {
    return SessionTemplateState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      creator: map['creator'] == null ? null : pulumi.Output.create<String>(map['creator'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      environmentConfig: map['environmentConfig'] == null ? null : pulumi.Output.create<SessionTemplateEnvironmentConfig>(SessionTemplateEnvironmentConfig.fromMap((map['environmentConfig'] as Map).cast<String, dynamic>())),
      jupyterSession: map['jupyterSession'] == null ? null : pulumi.Output.create<SessionTemplateJupyterSession>(SessionTemplateJupyterSession.fromMap((map['jupyterSession'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      runtimeConfig: map['runtimeConfig'] == null ? null : pulumi.Output.create<SessionTemplateRuntimeConfig>(SessionTemplateRuntimeConfig.fromMap((map['runtimeConfig'] as Map).cast<String, dynamic>())),
      sparkConnectSession: map['sparkConnectSession'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['sparkConnectSession'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      uuid: map['uuid'] == null ? null : pulumi.Output.create<String>(map['uuid'] as String),
    );
  }
}

