// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options for tuning the Kubernetes client used by a Provider.
class KubeClientSettings {
  /// Maximum burst for throttle. Default value is 120.
  final pulumi.Input<int>? burst;
  /// Maximum queries per second (QPS) to the API server from this client. Default value is 50.
  final pulumi.Input<double>? qps;
  /// Maximum time in seconds to wait before cancelling a HTTP request to the Kubernetes server. Default value is 32.
  final pulumi.Input<int>? timeout;

  /// Creates a new [KubeClientSettings].
  /// [burst] Maximum burst for throttle. Default value is 120.
  /// [qps] Maximum queries per second (QPS) to the API server from this client. Default value is 50.
  /// [timeout] Maximum time in seconds to wait before cancelling a HTTP request to the Kubernetes server. Default value is 32.
  KubeClientSettings({
    this.burst,
    this.qps,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'burst': ?burst,
      'qps': ?qps,
      'timeout': ?timeout,
    };
  }

  factory KubeClientSettings.fromMap(Map<String, dynamic> map) {
    return KubeClientSettings(
      burst: (() { final guardedValue = map['burst']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      qps: (() { final guardedValue = map['qps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

