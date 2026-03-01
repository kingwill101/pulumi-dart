// ignore_for_file: unused_element, unnecessary_cast


class FastUdpAppMonitor {
  /// The presence of this optional string is required in the response, if specified it confirms availability.
  final String? expectedResponse;
  /// Set the time between health checks,in seconds for FAST-Generated Pool Monitor.
  final int? interval;
  /// Optional data to be sent during each health check.
  final String? sendString;

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
      expectedResponse: map['expectedResponse'] == null ? null : map['expectedResponse'] as String,
      interval: map['interval'] == null ? null : map['interval'] as int,
      sendString: map['sendString'] == null ? null : map['sendString'] as String,
    );
  }
}

