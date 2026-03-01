// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gdc_application_environment_spark_application_environment_config.dart';

/// Input properties used for looking up and filtering GdcApplicationEnvironment resources.
class GdcApplicationEnvironmentState {
  /// The annotations to associate with this application environment. Annotations may be used to store client information, but are not used by the server.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The id of the application environment
  final pulumi.Input<String>? applicationEnvironmentId;
  /// The timestamp when the resource was created.
  final pulumi.Input<String>? createTime;
  /// User-provided human-readable name to be used in user interfaces.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The labels to associate with this application environment. Labels may be used for filtering and billing tracking.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the application environment
  final pulumi.Input<String>? location;
  /// Identifier. The name of the application environment. Format: projects/{project}/locations/{location}/serviceInstances/{service_instance}/applicationEnvironments/{application_environment_id}
  final pulumi.Input<String>? name;
  /// The name of the namespace in which to create this ApplicationEnvironment. This namespace must already exist in the cluster
  final pulumi.Input<String>? namespace;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The id of the service instance to which this application environment belongs.
  final pulumi.Input<String>? serviceinstance;
  /// Represents the SparkApplicationEnvironmentConfig.
  /// Structure is documented below.
  final pulumi.Input<GdcApplicationEnvironmentSparkApplicationEnvironmentConfig>? sparkApplicationEnvironmentConfig;
  /// System generated unique identifier for this application environment, formatted as UUID4.
  final pulumi.Input<String>? uid;
  /// The timestamp when the resource was most recently updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GdcApplicationEnvironmentState].
  /// [annotations] The annotations to associate with this application environment. Annotations may be used to store client information, but are not used by the server.
  /// [applicationEnvironmentId] The id of the application environment
  /// [createTime] The timestamp when the resource was created.
  /// [displayName] User-provided human-readable name to be used in user interfaces.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] The labels to associate with this application environment. Labels may be used for filtering and billing tracking.
  /// [location] The location of the application environment
  /// [name] Identifier. The name of the application environment. Format: projects/{project}/locations/{location}/serviceInstances/{service_instance}/applicationEnvironments/{application_environment_id}
  /// [namespace] The name of the namespace in which to create this ApplicationEnvironment. This namespace must already exist in the cluster
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [serviceinstance] The id of the service instance to which this application environment belongs.
  /// [sparkApplicationEnvironmentConfig] Represents the SparkApplicationEnvironmentConfig.
  /// [uid] System generated unique identifier for this application environment, formatted as UUID4.
  /// [updateTime] The timestamp when the resource was most recently updated.
  GdcApplicationEnvironmentState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? applicationEnvironmentId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? serviceinstance,
    pulumi.Output<GdcApplicationEnvironmentSparkApplicationEnvironmentConfig>? sparkApplicationEnvironmentConfig,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      applicationEnvironmentId = pulumi.Input.asOptionalInput<String>(applicationEnvironmentId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      serviceinstance = pulumi.Input.asOptionalInput<String>(serviceinstance),
      sparkApplicationEnvironmentConfig = pulumi.Input.asOptionalInput<GdcApplicationEnvironmentSparkApplicationEnvironmentConfig>(sparkApplicationEnvironmentConfig),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'applicationEnvironmentId': ?applicationEnvironmentId,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'namespace': ?namespace,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serviceinstance': ?serviceinstance,
      'sparkApplicationEnvironmentConfig': ?pulumi.Input.mapOptionalInputValue<GdcApplicationEnvironmentSparkApplicationEnvironmentConfig, Map<String, dynamic>>(sparkApplicationEnvironmentConfig, (value) => value.toMap()),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GdcApplicationEnvironmentState.fromMap(Map<String, dynamic> map) {
    return GdcApplicationEnvironmentState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      applicationEnvironmentId: map['applicationEnvironmentId'] == null ? null : pulumi.Output.create<String>(map['applicationEnvironmentId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      serviceinstance: map['serviceinstance'] == null ? null : pulumi.Output.create<String>(map['serviceinstance'] as String),
      sparkApplicationEnvironmentConfig: map['sparkApplicationEnvironmentConfig'] == null ? null : pulumi.Output.create<GdcApplicationEnvironmentSparkApplicationEnvironmentConfig>(GdcApplicationEnvironmentSparkApplicationEnvironmentConfig.fromMap((map['sparkApplicationEnvironmentConfig'] as Map).cast<String, dynamic>())),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

