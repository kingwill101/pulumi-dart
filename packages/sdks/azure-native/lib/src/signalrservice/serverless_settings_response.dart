// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Serverless settings.
class ServerlessSettingsResponse {
  /// Gets or sets Client Connection Timeout. Optional to be set.
  /// Value in seconds.
  /// Default value is 30 seconds.
  /// Customer should set the timeout to a shorter period if messages are expected to be sent in shorter intervals,
  /// and want the client to disconnect more quickly after the last message is sent.
  /// You can set the timeout to a longer period if messages are expected to be sent in longer intervals,
  /// and they want to keep the same client connection alive during this session.
  /// The service considers the client disconnected if it hasn't received a message (including keep-alive) in this interval.
  final pulumi.Input<int?>? connectionTimeoutInSeconds;

  /// Creates a new [ServerlessSettingsResponse].
  /// [connectionTimeoutInSeconds] Gets or sets Client Connection Timeout. Optional to be set.
  ServerlessSettingsResponse({
    pulumi.Input<int?>? connectionTimeoutInSeconds,
  }) : connectionTimeoutInSeconds = connectionTimeoutInSeconds ?? pulumi.Input.fromValue(30);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionTimeoutInSeconds': ?connectionTimeoutInSeconds,
    };
  }

  factory ServerlessSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ServerlessSettingsResponse(
      connectionTimeoutInSeconds: (() { final guardedValue = map['connectionTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
