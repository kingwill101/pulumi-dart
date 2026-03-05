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
    required this.location,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory GetServiceRunV2Args.fromMap(Map<String, dynamic> map) {
    return GetServiceRunV2Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}

