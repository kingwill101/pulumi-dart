// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceConvergeConfig {
  /// The interval to check if the desired state is reached `(ms|s)`. Defaults to `7s`.
  final pulumi.Input<String>? delay;
  /// The timeout of the service to reach the desired state `(s|m)`. Defaults to `3m`
  final pulumi.Input<String>? timeout;

  /// Creates a new [ServiceConvergeConfig].
  /// [delay] The interval to check if the desired state is reached `(ms|s)`. Defaults to `7s`.
  /// [timeout] The timeout of the service to reach the desired state `(s|m)`. Defaults to `3m`
  ServiceConvergeConfig({
    this.delay,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delay': ?delay,
      'timeout': ?timeout,
    };
  }

  factory ServiceConvergeConfig.fromMap(Map<String, dynamic> map) {
    return ServiceConvergeConfig(
      delay: (() { final guardedValue = map['delay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

