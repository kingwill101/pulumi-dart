// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gdc_spark_application_pyspark_application_config.dart';
import 'gdc_spark_application_spark_application_config.dart';
import 'gdc_spark_application_spark_rapplication_config.dart';
import 'gdc_spark_application_spark_sql_application_config.dart';

/// Input properties used for looking up and filtering GdcSparkApplication resources.
class GdcSparkApplicationState {
  /// The annotations to associate with this application. Annotations may be used to store client information, but are not used by the server.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// An ApplicationEnvironment from which to inherit configuration properties.
  final pulumi.Input<String>? applicationEnvironment;
  /// The timestamp when the resource was created.
  final pulumi.Input<String>? createTime;
  /// List of container image uris for additional file dependencies. Dependent files are sequentially copied from each image. If a file with the same name exists in 2 images then the file from later image is used.
  final pulumi.Input<List<String>>? dependencyImages;
  /// User-provided human-readable name to be used in user interfaces.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The labels to associate with this application. Labels may be used for filtering and billing tracking.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the spark application.
  final pulumi.Input<String>? location;
  /// URL for a monitoring UI for this application (for eventual Spark PHS/UI support) Out of scope for private GA
  final pulumi.Input<String>? monitoringEndpoint;
  /// Identifier. The name of the application. Format: projects/{project}/locations/{location}/serviceInstances/{service_instance}/sparkApplications/{application}
  final pulumi.Input<String>? name;
  /// The Kubernetes namespace in which to create the application. This namespace must already exist on the cluster.
  final pulumi.Input<String>? namespace;
  /// An HCFS URI pointing to the location of stdout and stdout of the application Mainly useful for Pantheon and gcloud Not in scope for private GA
  final pulumi.Input<String>? outputUri;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// application-specific properties.
  final pulumi.Input<Map<String, String>>? properties;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Represents the PySparkApplicationConfig.
  /// Structure is documented below.
  final pulumi.Input<GdcSparkApplicationPysparkApplicationConfig>? pysparkApplicationConfig;
  /// Whether the application is currently reconciling. True if the current state of the resource does not match the intended state, and the system is working to reconcile them, whether or not the change was user initiated.
  final pulumi.Input<bool>? reconciling;
  /// The id of the service instance to which this spark application belongs.
  final pulumi.Input<String>? serviceinstance;
  /// Represents the SparkApplicationConfig.
  /// Structure is documented below.
  final pulumi.Input<GdcSparkApplicationSparkApplicationConfig>? sparkApplicationConfig;
  /// The id of the application
  final pulumi.Input<String>? sparkApplicationId;
  /// Represents the SparkRApplicationConfig.
  /// Structure is documented below.
  final pulumi.Input<GdcSparkApplicationSparkRApplicationConfig>? sparkRApplicationConfig;
  /// Represents the SparkRApplicationConfig.
  /// Structure is documented below.
  final pulumi.Input<GdcSparkApplicationSparkSqlApplicationConfig>? sparkSqlApplicationConfig;
  /// The current state.
  /// Possible values:
  /// * `STATE_UNSPECIFIED`
  /// * `PENDING`
  /// * `RUNNING`
  /// * `CANCELLING`
  /// * `CANCELLED`
  /// * `SUCCEEDED`
  /// * `FAILED`
  final pulumi.Input<String>? state;
  /// A message explaining the current state.
  final pulumi.Input<String>? stateMessage;
  /// System generated unique identifier for this application, formatted as UUID4.
  final pulumi.Input<String>? uid;
  /// The timestamp when the resource was most recently updated.
  final pulumi.Input<String>? updateTime;
  /// The Dataproc version of this application.
  final pulumi.Input<String>? version;

  /// Creates a new [GdcSparkApplicationState].
  /// [annotations] The annotations to associate with this application. Annotations may be used to store client information, but are not used by the server.
  /// [applicationEnvironment] An ApplicationEnvironment from which to inherit configuration properties.
  /// [createTime] The timestamp when the resource was created.
  /// [dependencyImages] List of container image uris for additional file dependencies. Dependent files are sequentially copied from each image. If a file with the same name exists in 2 images then the file from later image is used.
  /// [displayName] User-provided human-readable name to be used in user interfaces.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] The labels to associate with this application. Labels may be used for filtering and billing tracking.
  /// [location] The location of the spark application.
  /// [monitoringEndpoint] URL for a monitoring UI for this application (for eventual Spark PHS/UI support) Out of scope for private GA
  /// [name] Identifier. The name of the application. Format: projects/{project}/locations/{location}/serviceInstances/{service_instance}/sparkApplications/{application}
  /// [namespace] The Kubernetes namespace in which to create the application. This namespace must already exist on the cluster.
  /// [outputUri] An HCFS URI pointing to the location of stdout and stdout of the application Mainly useful for Pantheon and gcloud Not in scope for private GA
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] application-specific properties.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [pysparkApplicationConfig] Represents the PySparkApplicationConfig.
  /// [reconciling] Whether the application is currently reconciling. True if the current state of the resource does not match the intended state, and the system is working to reconcile them, whether or not the change was user initiated.
  /// [serviceinstance] The id of the service instance to which this spark application belongs.
  /// [sparkApplicationConfig] Represents the SparkApplicationConfig.
  /// [sparkApplicationId] The id of the application
  /// [sparkRApplicationConfig] Represents the SparkRApplicationConfig.
  /// [sparkSqlApplicationConfig] Represents the SparkRApplicationConfig.
  /// [state] The current state.
  /// [stateMessage] A message explaining the current state.
  /// [uid] System generated unique identifier for this application, formatted as UUID4.
  /// [updateTime] The timestamp when the resource was most recently updated.
  /// [version] The Dataproc version of this application.
  GdcSparkApplicationState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? applicationEnvironment,
    pulumi.Output<String>? createTime,
    pulumi.Output<List<String>>? dependencyImages,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? monitoringEndpoint,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? outputUri,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? properties,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<GdcSparkApplicationPysparkApplicationConfig>? pysparkApplicationConfig,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? serviceinstance,
    pulumi.Output<GdcSparkApplicationSparkApplicationConfig>? sparkApplicationConfig,
    pulumi.Output<String>? sparkApplicationId,
    pulumi.Output<GdcSparkApplicationSparkRApplicationConfig>? sparkRApplicationConfig,
    pulumi.Output<GdcSparkApplicationSparkSqlApplicationConfig>? sparkSqlApplicationConfig,
    pulumi.Output<String>? state,
    pulumi.Output<String>? stateMessage,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? version,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      applicationEnvironment = pulumi.Input.asOptionalInput<String>(applicationEnvironment),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dependencyImages = pulumi.Input.asOptionalInput<List<String>>(dependencyImages),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      monitoringEndpoint = pulumi.Input.asOptionalInput<String>(monitoringEndpoint),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      outputUri = pulumi.Input.asOptionalInput<String>(outputUri),
      project = pulumi.Input.asOptionalInput<String>(project),
      properties = pulumi.Input.asOptionalInput<Map<String, String>>(properties),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      pysparkApplicationConfig = pulumi.Input.asOptionalInput<GdcSparkApplicationPysparkApplicationConfig>(pysparkApplicationConfig),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      serviceinstance = pulumi.Input.asOptionalInput<String>(serviceinstance),
      sparkApplicationConfig = pulumi.Input.asOptionalInput<GdcSparkApplicationSparkApplicationConfig>(sparkApplicationConfig),
      sparkApplicationId = pulumi.Input.asOptionalInput<String>(sparkApplicationId),
      sparkRApplicationConfig = pulumi.Input.asOptionalInput<GdcSparkApplicationSparkRApplicationConfig>(sparkRApplicationConfig),
      sparkSqlApplicationConfig = pulumi.Input.asOptionalInput<GdcSparkApplicationSparkSqlApplicationConfig>(sparkSqlApplicationConfig),
      state = pulumi.Input.asOptionalInput<String>(state),
      stateMessage = pulumi.Input.asOptionalInput<String>(stateMessage),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'applicationEnvironment': ?applicationEnvironment,
      'createTime': ?createTime,
      'dependencyImages': ?dependencyImages,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'monitoringEndpoint': ?monitoringEndpoint,
      'name': ?name,
      'namespace': ?namespace,
      'outputUri': ?outputUri,
      'project': ?project,
      'properties': ?properties,
      'pulumiLabels': ?pulumiLabels,
      'pysparkApplicationConfig': ?pulumi.Input.mapOptionalInputValue<GdcSparkApplicationPysparkApplicationConfig, Map<String, dynamic>>(pysparkApplicationConfig, (value) => value.toMap()),
      'reconciling': ?reconciling,
      'serviceinstance': ?serviceinstance,
      'sparkApplicationConfig': ?pulumi.Input.mapOptionalInputValue<GdcSparkApplicationSparkApplicationConfig, Map<String, dynamic>>(sparkApplicationConfig, (value) => value.toMap()),
      'sparkApplicationId': ?sparkApplicationId,
      'sparkRApplicationConfig': ?pulumi.Input.mapOptionalInputValue<GdcSparkApplicationSparkRApplicationConfig, Map<String, dynamic>>(sparkRApplicationConfig, (value) => value.toMap()),
      'sparkSqlApplicationConfig': ?pulumi.Input.mapOptionalInputValue<GdcSparkApplicationSparkSqlApplicationConfig, Map<String, dynamic>>(sparkSqlApplicationConfig, (value) => value.toMap()),
      'state': ?state,
      'stateMessage': ?stateMessage,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'version': ?version,
    };
  }

  factory GdcSparkApplicationState.fromMap(Map<String, dynamic> map) {
    return GdcSparkApplicationState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      applicationEnvironment: map['applicationEnvironment'] == null ? null : pulumi.Output.create<String>(map['applicationEnvironment'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dependencyImages: map['dependencyImages'] == null ? null : pulumi.Output.create<List<String>>((map['dependencyImages'] as List).cast<String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      monitoringEndpoint: map['monitoringEndpoint'] == null ? null : pulumi.Output.create<String>(map['monitoringEndpoint'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      outputUri: map['outputUri'] == null ? null : pulumi.Output.create<String>(map['outputUri'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['properties'] as Map).cast<String, String>()),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      pysparkApplicationConfig: map['pysparkApplicationConfig'] == null ? null : pulumi.Output.create<GdcSparkApplicationPysparkApplicationConfig>(GdcSparkApplicationPysparkApplicationConfig.fromMap((map['pysparkApplicationConfig'] as Map).cast<String, dynamic>())),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      serviceinstance: map['serviceinstance'] == null ? null : pulumi.Output.create<String>(map['serviceinstance'] as String),
      sparkApplicationConfig: map['sparkApplicationConfig'] == null ? null : pulumi.Output.create<GdcSparkApplicationSparkApplicationConfig>(GdcSparkApplicationSparkApplicationConfig.fromMap((map['sparkApplicationConfig'] as Map).cast<String, dynamic>())),
      sparkApplicationId: map['sparkApplicationId'] == null ? null : pulumi.Output.create<String>(map['sparkApplicationId'] as String),
      sparkRApplicationConfig: map['sparkRApplicationConfig'] == null ? null : pulumi.Output.create<GdcSparkApplicationSparkRApplicationConfig>(GdcSparkApplicationSparkRApplicationConfig.fromMap((map['sparkRApplicationConfig'] as Map).cast<String, dynamic>())),
      sparkSqlApplicationConfig: map['sparkSqlApplicationConfig'] == null ? null : pulumi.Output.create<GdcSparkApplicationSparkSqlApplicationConfig>(GdcSparkApplicationSparkSqlApplicationConfig.fromMap((map['sparkSqlApplicationConfig'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      stateMessage: map['stateMessage'] == null ? null : pulumi.Output.create<String>(map['stateMessage'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

