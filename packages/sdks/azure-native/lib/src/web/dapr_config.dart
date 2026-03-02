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
  DaprConfig({
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
      appId: map['appId'] == null ? null : (map['appId']! as String).input(),
      appPort: map['appPort'] == null ? null : (map['appPort']! as int).input(),
      enableApiLogging: map['enableApiLogging'] == null ? null : (map['enableApiLogging']! as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      httpMaxRequestSize: map['httpMaxRequestSize'] == null ? null : (map['httpMaxRequestSize']! as int).input(),
      httpReadBufferSize: map['httpReadBufferSize'] == null ? null : (map['httpReadBufferSize']! as int).input(),
      logLevel: map['logLevel'] == null ? null : (map['logLevel']! as String).input(),
    );
  }
}

