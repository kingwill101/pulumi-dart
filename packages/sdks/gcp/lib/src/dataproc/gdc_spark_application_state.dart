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
    this.annotations,
    this.applicationEnvironment,
    this.createTime,
    this.dependencyImages,
    this.displayName,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.monitoringEndpoint,
    this.name,
    this.namespace,
    this.outputUri,
    this.project,
    this.properties,
    this.pulumiLabels,
    this.pysparkApplicationConfig,
    this.reconciling,
    this.serviceinstance,
    this.sparkApplicationConfig,
    this.sparkApplicationId,
    this.sparkRApplicationConfig,
    this.sparkSqlApplicationConfig,
    this.state,
    this.stateMessage,
    this.uid,
    this.updateTime,
    this.version,
  });

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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      applicationEnvironment: (() { final guardedValue = map['applicationEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dependencyImages: (() { final guardedValue = map['dependencyImages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringEndpoint: (() { final guardedValue = map['monitoringEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputUri: (() { final guardedValue = map['outputUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      pysparkApplicationConfig: (() { final guardedValue = map['pysparkApplicationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GdcSparkApplicationPysparkApplicationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceinstance: (() { final guardedValue = map['serviceinstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sparkApplicationConfig: (() { final guardedValue = map['sparkApplicationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GdcSparkApplicationSparkApplicationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkApplicationId: (() { final guardedValue = map['sparkApplicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sparkRApplicationConfig: (() { final guardedValue = map['sparkRApplicationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GdcSparkApplicationSparkRApplicationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkSqlApplicationConfig: (() { final guardedValue = map['sparkSqlApplicationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GdcSparkApplicationSparkSqlApplicationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateMessage: (() { final guardedValue = map['stateMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

