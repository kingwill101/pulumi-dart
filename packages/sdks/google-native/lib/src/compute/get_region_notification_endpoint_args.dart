// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_notification_endpoint_args_doc}
/// Arguments for getRegionNotificationEndpoint.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_notification_endpoint_args_doc}
class GetRegionNotificationEndpointArgs {
  final pulumi.Input<String> notificationEndpoint;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionNotificationEndpointArgs].
  /// [notificationEndpoint] Required.
  /// [project] Optional.
  /// [region] Required.
  const GetRegionNotificationEndpointArgs({
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

  factory GetRegionNotificationEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionNotificationEndpointArgs(
      notificationEndpoint: pulumi.Input.fromValue(map['notificationEndpoint'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
