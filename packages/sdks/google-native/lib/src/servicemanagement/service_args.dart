// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicemanagement_v1_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_servicemanagement_v1_service_args_doc}
class ServiceArgs {
  /// ID of the project that produces and owns this service.
  final pulumi.Input<String>? producerProjectId;
  /// The name of the service. See the [overview](https://cloud.google.com/service-infrastructure/docs/overview) for naming requirements.
  final pulumi.Input<String>? serviceName;

  /// Creates a new [ServiceArgs].
  /// [producerProjectId] ID of the project that produces and owns this service.
  /// [serviceName] The name of the service. See the [overview](https://cloud.google.com/service-infrastructure/docs/overview) for naming requirements.
  ServiceArgs({
    this.producerProjectId,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'producerProjectId': ?producerProjectId,
      'serviceName': ?serviceName,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      producerProjectId: map['producerProjectId'] == null ? null : (map['producerProjectId']! as String).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName']! as String).input(),
    );
  }
}

