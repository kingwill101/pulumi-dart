// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_notification_endpoint_compute_beta_args_doc}
/// Arguments for getRegionNotificationEndpoint.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_notification_endpoint_compute_beta_args_doc}
class GetRegionNotificationEndpointComputeBetaArgs {
  final pulumi.Input<String> notificationEndpoint;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionNotificationEndpointComputeBetaArgs].
  /// [notificationEndpoint] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionNotificationEndpointComputeBetaArgs({
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

  factory GetRegionNotificationEndpointComputeBetaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionNotificationEndpointComputeBetaArgs(
      notificationEndpoint: pulumi.Input.fromValue(
        map['notificationEndpoint'] as String,
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
