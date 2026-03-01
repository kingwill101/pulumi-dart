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
    required pulumi.Output<String> notificationEndpoint,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
  }) :
      notificationEndpoint = pulumi.Input.asInput<String>(notificationEndpoint),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationEndpoint': notificationEndpoint,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionNotificationEndpointComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionNotificationEndpointComputeBetaArgs(
      notificationEndpoint: pulumi.Output.create<String>(map['notificationEndpoint'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

