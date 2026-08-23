// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gdc_spark_application_pyspark_application_config.dart';
import 'gdc_spark_application_spark_application_config.dart';
import 'gdc_spark_application_spark_rapplication_config.dart';
import 'gdc_spark_application_spark_sql_application_config.dart';

/// {@template pulumi_dataproc_gdc_spark_application_gdc_spark_application_args_doc}
/// The set of arguments for GdcSparkApplication.
/// {@endtemplate}
/// {@macro pulumi_dataproc_gdc_spark_application_gdc_spark_application_args_doc}
class GdcSparkApplicationArgs {
  /// The annotations to associate with this application. Annotations may be used to store client information, but are not used by the server.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// An ApplicationEnvironment from which to inherit configuration properties.
  final pulumi.Input<String>? applicationEnvironment;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// List of container image uris for additional file dependencies. Dependent files are sequentially copied from each image. If a file with the same name exists in 2 images then the file from later image is used.
  final pulumi.Input<List<String>>? dependencyImages;
  /// User-provided human-readable name to be used in user interfaces.
  final pulumi.Input<String>? displayName;
  /// The labels to associate with this application. Labels may be used for filtering and billing tracking.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the spark application.
  final pulumi.Input<String> location;
  /// The Kubernetes namespace in which to create the application. This namespace must already exist on the cluster.
  final pulumi.Input<String>? namespace;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// application-specific properties.
  final pulumi.Input<Map<String, String>>? properties;
  /// Represents the PySparkApplicationConfig.
  /// Structure is documented below.
  final pulumi.Input<GdcSparkApplicationPysparkApplicationConfig>? pysparkApplicationConfig;
  /// The id of the service instance to which this spark application belongs.
  final pulumi.Input<String> serviceinstance;
  /// Represents the SparkApplicationConfig.
  /// Structure is documented below.
  final pulumi.Input<GdcSparkApplicationSparkApplicationConfig>? sparkApplicationConfig;
  /// The id of the application
  final pulumi.Input<String> sparkApplicationId;
  /// Represents the SparkRApplicationConfig.
  /// Structure is documented below.
  final pulumi.Input<GdcSparkApplicationSparkRApplicationConfig>? sparkRApplicationConfig;
  /// Represents the SparkRApplicationConfig.
  /// Structure is documented below.
  final pulumi.Input<GdcSparkApplicationSparkSqlApplicationConfig>? sparkSqlApplicationConfig;
  /// The Dataproc version of this application.
  final pulumi.Input<String>? version;

  /// Creates a new [GdcSparkApplicationArgs].
  /// [annotations] The annotations to associate with this application. Annotations may be used to store client information, but are not used by the server.
  /// [applicationEnvironment] An ApplicationEnvironment from which to inherit configuration properties.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [dependencyImages] List of container image uris for additional file dependencies. Dependent files are sequentially copied from each image. If a file with the same name exists in 2 images then the file from later image is used.
  /// [displayName] User-provided human-readable name to be used in user interfaces.
  /// [labels] The labels to associate with this application. Labels may be used for filtering and billing tracking.
  /// [location] The location of the spark application.
  /// [namespace] The Kubernetes namespace in which to create the application. This namespace must already exist on the cluster.
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] application-specific properties.
  /// [pysparkApplicationConfig] Represents the PySparkApplicationConfig.
  /// [serviceinstance] The id of the service instance to which this spark application belongs.
  /// [sparkApplicationConfig] Represents the SparkApplicationConfig.
  /// [sparkApplicationId] The id of the application
  /// [sparkRApplicationConfig] Represents the SparkRApplicationConfig.
  /// [sparkSqlApplicationConfig] Represents the SparkRApplicationConfig.
  /// [version] The Dataproc version of this application.
  const GdcSparkApplicationArgs({
    this.annotations,
    this.applicationEnvironment,
    this.deletionPolicy,
    this.dependencyImages,
    this.displayName,
    this.labels,
    required this.location,
    this.namespace,
    this.project,
    this.properties,
    this.pysparkApplicationConfig,
    required this.serviceinstance,
    this.sparkApplicationConfig,
    required this.sparkApplicationId,
    this.sparkRApplicationConfig,
    this.sparkSqlApplicationConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'applicationEnvironment': ?applicationEnvironment,
      'deletionPolicy': ?deletionPolicy,
      'dependencyImages': ?dependencyImages,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': location,
      'namespace': ?namespace,
      'project': ?project,
      'properties': ?properties,
      'pysparkApplicationConfig': ?pulumi.Input.mapOptionalInputValue<GdcSparkApplicationPysparkApplicationConfig, Map<String, dynamic>>(pysparkApplicationConfig, (value) => value.toMap()),
      'serviceinstance': serviceinstance,
      'sparkApplicationConfig': ?pulumi.Input.mapOptionalInputValue<GdcSparkApplicationSparkApplicationConfig, Map<String, dynamic>>(sparkApplicationConfig, (value) => value.toMap()),
      'sparkApplicationId': sparkApplicationId,
      'sparkRApplicationConfig': ?pulumi.Input.mapOptionalInputValue<GdcSparkApplicationSparkRApplicationConfig, Map<String, dynamic>>(sparkRApplicationConfig, (value) => value.toMap()),
      'sparkSqlApplicationConfig': ?pulumi.Input.mapOptionalInputValue<GdcSparkApplicationSparkSqlApplicationConfig, Map<String, dynamic>>(sparkSqlApplicationConfig, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory GdcSparkApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GdcSparkApplicationArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      applicationEnvironment: (() { final guardedValue = map['applicationEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dependencyImages: (() { final guardedValue = map['dependencyImages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      pysparkApplicationConfig: (() { final guardedValue = map['pysparkApplicationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GdcSparkApplicationPysparkApplicationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceinstance: pulumi.Input.fromValue(map['serviceinstance'] as String),
      sparkApplicationConfig: (() { final guardedValue = map['sparkApplicationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GdcSparkApplicationSparkApplicationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkApplicationId: pulumi.Input.fromValue(map['sparkApplicationId'] as String),
      sparkRApplicationConfig: (() { final guardedValue = map['sparkRApplicationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GdcSparkApplicationSparkRApplicationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkSqlApplicationConfig: (() { final guardedValue = map['sparkSqlApplicationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GdcSparkApplicationSparkSqlApplicationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
