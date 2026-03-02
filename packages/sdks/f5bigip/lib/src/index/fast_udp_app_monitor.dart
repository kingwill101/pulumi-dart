// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FastUdpAppMonitor {
  /// The presence of this optional string is required in the response, if specified it confirms availability.
  final pulumi.Input<String>? expectedResponse;
  /// Set the time between health checks,in seconds for FAST-Generated Pool Monitor.
  final pulumi.Input<int>? interval;
  /// Optional data to be sent during each health check.
  final pulumi.Input<String>? sendString;

  /// Creates a new [FastUdpAppMonitor].
  /// [expectedResponse] The presence of this optional string is required in the response, if specified it confirms availability.
  /// [interval] Set the time between health checks,in seconds for FAST-Generated Pool Monitor.
  /// [sendString] Optional data to be sent during each health check.
  FastUdpAppMonitor({
    this.expectedResponse,
    this.interval,
    this.sendString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expectedResponse': ?expectedResponse,
      'interval': ?interval,
      'sendString': ?sendString,
    };
  }

  factory FastUdpAppMonitor.fromMap(Map<String, dynamic> map) {
    return FastUdpAppMonitor(
      expectedResponse: map['expectedResponse'] == null ? null : (map['expectedResponse']! as String).input(),
      interval: map['interval'] == null ? null : (map['interval']! as int).input(),
      sendString: map['sendString'] == null ? null : (map['sendString']! as String).input(),
    );
  }
}

