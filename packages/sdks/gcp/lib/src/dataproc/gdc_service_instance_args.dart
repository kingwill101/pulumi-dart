// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gdc_service_instance_gdce_cluster.dart';

/// {@template pulumi_dataproc_gdc_service_instance_gdc_service_instance_args_doc}
/// The set of arguments for GdcServiceInstance.
/// {@endtemplate}
/// {@macro pulumi_dataproc_gdc_service_instance_gdc_service_instance_args_doc}
class GdcServiceInstanceArgs {
  /// User-provided human-readable name to be used in user interfaces.
  final pulumi.Input<String>? displayName;
  /// Gdce cluster information.
  /// Structure is documented below.
  final pulumi.Input<GdcServiceInstanceGdceCluster>? gdceCluster;
  /// The labels to associate with this service instance. Labels may be used for filtering and billing tracking.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location of the resource.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Requested service account to associate with ServiceInstance.
  final pulumi.Input<String>? serviceAccount;
  /// Id of the service instance.
  final pulumi.Input<String> serviceInstanceId;
  /// Spark-specific service instance configuration.
  final pulumi.Input<Map<String, dynamic>>? sparkServiceInstanceConfig;

  /// Creates a new [GdcServiceInstanceArgs].
  /// [displayName] User-provided human-readable name to be used in user interfaces.
  /// [gdceCluster] Gdce cluster information.
  /// [labels] The labels to associate with this service instance. Labels may be used for filtering and billing tracking.
  /// [location] Location of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceAccount] Requested service account to associate with ServiceInstance.
  /// [serviceInstanceId] Id of the service instance.
  /// [sparkServiceInstanceConfig] Spark-specific service instance configuration.
  GdcServiceInstanceArgs({
    pulumi.Output<String>? displayName,
    pulumi.Output<GdcServiceInstanceGdceCluster>? gdceCluster,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? serviceAccount,
    required pulumi.Output<String> serviceInstanceId,
    pulumi.Output<Map<String, dynamic>>? sparkServiceInstanceConfig,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      gdceCluster = pulumi.Input.asOptionalInput<GdcServiceInstanceGdceCluster>(gdceCluster),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      serviceInstanceId = pulumi.Input.asInput<String>(serviceInstanceId),
      sparkServiceInstanceConfig = pulumi.Input.asOptionalInput<Map<String, dynamic>>(sparkServiceInstanceConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'gdceCluster': ?pulumi.Input.mapOptionalInputValue<GdcServiceInstanceGdceCluster, Map<String, dynamic>>(gdceCluster, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'serviceAccount': ?serviceAccount,
      'serviceInstanceId': serviceInstanceId,
      'sparkServiceInstanceConfig': ?sparkServiceInstanceConfig,
    };
  }

  factory GdcServiceInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GdcServiceInstanceArgs(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      gdceCluster: map['gdceCluster'] == null ? null : pulumi.Output.create<GdcServiceInstanceGdceCluster>(GdcServiceInstanceGdceCluster.fromMap((map['gdceCluster'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      serviceInstanceId: pulumi.Output.create<String>(map['serviceInstanceId'] as String),
      sparkServiceInstanceConfig: map['sparkServiceInstanceConfig'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['sparkServiceInstanceConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

