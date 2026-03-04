// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_compute_v1.dart';

/// Represents a gRPC setting that describes one gRPC notification endpoint and the retry duration attempting to send notification to this endpoint.
class NotificationEndpointGrpcSettingsComputeV1 {
  /// Optional. If specified, this field is used to set the authority header by the sender of notifications. See https://tools.ietf.org/html/rfc7540#section-8.1.2.3
  final pulumi.Input<String>? authority;

  /// Endpoint to which gRPC notifications are sent. This must be a valid gRPCLB DNS name.
  final pulumi.Input<String>? endpoint;

  /// Optional. If specified, this field is used to populate the "name" field in gRPC requests.
  final pulumi.Input<String>? payloadName;

  /// Optional. This field is used to configure how often to send a full update of all non-healthy backends. If unspecified, full updates are not sent. If specified, must be in the range between 600 seconds to 3600 seconds. Nanos are disallowed. Can only be set for regional notification endpoints.
  final pulumi.Input<DurationComputeV1>? resendInterval;

  /// How much time (in seconds) is spent attempting notification retries until a successful response is received. Default is 30s. Limit is 20m (1200s). Must be a positive number.
  final pulumi.Input<int>? retryDurationSec;

  /// Creates a new [NotificationEndpointGrpcSettingsComputeV1].
  /// [authority] Optional. If specified, this field is used to set the authority header by the sender of notifications. See https://tools.ietf.org/html/rfc7540#section-8.1.2.3
  /// [endpoint] Endpoint to which gRPC notifications are sent. This must be a valid gRPCLB DNS name.
  /// [payloadName] Optional. If specified, this field is used to populate the "name" field in gRPC requests.
  /// [resendInterval] Optional. This field is used to configure how often to send a full update of all non-healthy backends. If unspecified, full updates are not sent. If specified, must be in the range between 600 seconds to 3600 seconds. Nanos are disallowed. Can only be set for regional notification endpoints.
  /// [retryDurationSec] How much time (in seconds) is spent attempting notification retries until a successful response is received. Default is 30s. Limit is 20m (1200s). Must be a positive number.
  NotificationEndpointGrpcSettingsComputeV1({
    this.authority,
    this.endpoint,
    this.payloadName,
    this.resendInterval,
    this.retryDurationSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': ?authority,
      'endpoint': ?endpoint,
      'payloadName': ?payloadName,
      'resendInterval':
          ?pulumi.Input.mapOptionalInputValue<
            DurationComputeV1,
            Map<String, dynamic>
          >(resendInterval, (value) => value.toMap()),
      'retryDurationSec': ?retryDurationSec,
    };
  }

  factory NotificationEndpointGrpcSettingsComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return NotificationEndpointGrpcSettingsComputeV1(
      authority: (() {
        final guardedValue = map['authority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      payloadName: (() {
        final guardedValue = map['payloadName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resendInterval: (() {
        final guardedValue = map['resendInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DurationComputeV1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      retryDurationSec: (() {
        final guardedValue = map['retryDurationSec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
