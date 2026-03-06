// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_notification_endpoint_compute_v1_args_doc}
/// Arguments for getRegionNotificationEndpoint.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_notification_endpoint_compute_v1_args_doc}
class GetRegionNotificationEndpointComputeV1Args {
  final pulumi.Input<String> notificationEndpoint;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionNotificationEndpointComputeV1Args].
  /// [notificationEndpoint] Required.
  /// [project] Optional.
  /// [region] Required.
  const GetRegionNotificationEndpointComputeV1Args({
    required this.notificationEndpoint,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationEndpoint': notificationEndpoint,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionNotificationEndpointComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionNotificationEndpointComputeV1Args(
      notificationEndpoint: pulumi.Input.fromValue(map['notificationEndpoint'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

