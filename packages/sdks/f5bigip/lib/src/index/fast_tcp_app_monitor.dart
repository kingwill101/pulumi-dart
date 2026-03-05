// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FastTcpAppMonitor {
  /// Set the time between health checks,in seconds for FAST-Generated Pool Monitor.
  final pulumi.Input<int>? interval;

  /// Creates a new [FastTcpAppMonitor].
  /// [interval] Set the time between health checks,in seconds for FAST-Generated Pool Monitor.
  FastTcpAppMonitor({
    this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
    };
  }

  factory FastTcpAppMonitor.fromMap(Map<String, dynamic> map) {
    return FastTcpAppMonitor(
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

