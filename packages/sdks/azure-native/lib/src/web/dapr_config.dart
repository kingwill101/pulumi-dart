// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// App Dapr configuration.
class DaprConfig {
  /// Dapr application identifier
  final pulumi.Input<String>? appId;
  /// Tells Dapr which port your application is listening on
  final pulumi.Input<int>? appPort;
  /// Enables API logging for the Dapr sidecar
  final pulumi.Input<bool>? enableApiLogging;
  /// Boolean indicating if the Dapr side car is enabled
  final pulumi.Input<bool>? enabled;
  /// Increasing max size of request body http servers parameter in MB to handle uploading of big files. Default is 4 MB.
  final pulumi.Input<int>? httpMaxRequestSize;
  /// Dapr max size of http header read buffer in KB to handle when sending multi-KB headers. Default is 65KB.
  final pulumi.Input<int>? httpReadBufferSize;
  /// Sets the log level for the Dapr sidecar. Allowed values are debug, info, warn, error. Default is info.
  final pulumi.Input<String>? logLevel;

  /// Creates a new [DaprConfig].
  /// [appId] Dapr application identifier
  /// [appPort] Tells Dapr which port your application is listening on
  /// [enableApiLogging] Enables API logging for the Dapr sidecar
  /// [enabled] Boolean indicating if the Dapr side car is enabled
  /// [httpMaxRequestSize] Increasing max size of request body http servers parameter in MB to handle uploading of big files. Default is 4 MB.
  /// [httpReadBufferSize] Dapr max size of http header read buffer in KB to handle when sending multi-KB headers. Default is 65KB.
  /// [logLevel] Sets the log level for the Dapr sidecar. Allowed values are debug, info, warn, error. Default is info.
  const DaprConfig({
    this.appId,
    this.appPort,
    this.enableApiLogging,
    this.enabled,
    this.httpMaxRequestSize,
    this.httpReadBufferSize,
    this.logLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'appPort': ?appPort,
      'enableApiLogging': ?enableApiLogging,
      'enabled': ?enabled,
      'httpMaxRequestSize': ?httpMaxRequestSize,
      'httpReadBufferSize': ?httpReadBufferSize,
      'logLevel': ?logLevel,
    };
  }

  factory DaprConfig.fromMap(Map<String, dynamic> map) {
    return DaprConfig(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appPort: (() { final guardedValue = map['appPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enableApiLogging: (() { final guardedValue = map['enableApiLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpMaxRequestSize: (() { final guardedValue = map['httpMaxRequestSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      httpReadBufferSize: (() { final guardedValue = map['httpReadBufferSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
