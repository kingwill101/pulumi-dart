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
    this.displayName,
    this.gdceCluster,
    this.labels,
    required this.location,
    this.project,
    this.serviceAccount,
    required this.serviceInstanceId,
    this.sparkServiceInstanceConfig,
  });

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
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gdceCluster: (() { final guardedValue = map['gdceCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GdcServiceInstanceGdceCluster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceInstanceId: pulumi.Input.fromValue(map['serviceInstanceId'] as String),
      sparkServiceInstanceConfig: (() { final guardedValue = map['sparkServiceInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

