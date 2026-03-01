// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1beta_get_service_metastore_v1beta_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1beta_get_service_metastore_v1beta_args_doc}
class GetServiceMetastoreV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetServiceMetastoreV1betaArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [serviceId] Required.
  GetServiceMetastoreV1betaArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceId = pulumi.Input.asInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory GetServiceMetastoreV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceMetastoreV1betaArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
    );
  }
}

