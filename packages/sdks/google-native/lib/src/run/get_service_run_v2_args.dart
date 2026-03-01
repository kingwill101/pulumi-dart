// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_run_v2_get_service_run_v2_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_run_v2_get_service_run_v2_args_doc}
class GetServiceRunV2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetServiceRunV2Args].
  /// [location] Required.
  /// [project] Optional.
  /// [serviceId] Required.
  GetServiceRunV2Args({
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

  factory GetServiceRunV2Args.fromMap(Map<String, dynamic> map) {
    return GetServiceRunV2Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
    );
  }
}

