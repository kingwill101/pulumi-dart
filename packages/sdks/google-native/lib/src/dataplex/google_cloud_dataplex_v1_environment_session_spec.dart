// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for sessions created for this environment.
class GoogleCloudDataplexV1EnvironmentSessionSpec {
  /// Optional. If True, this causes sessions to be pre-created and available for faster startup to enable interactive exploration use-cases. This defaults to False to avoid additional billed charges. These can only be set to True for the environment with name set to "default", and with default configuration.
  final pulumi.Input<bool>? enableFastStartup;
  /// Optional. The idle time configuration of the session. The session will be auto-terminated at the end of this period.
  final pulumi.Input<String>? maxIdleDuration;

  /// Creates a new [GoogleCloudDataplexV1EnvironmentSessionSpec].
  /// [enableFastStartup] Optional. If True, this causes sessions to be pre-created and available for faster startup to enable interactive exploration use-cases. This defaults to False to avoid additional billed charges. These can only be set to True for the environment with name set to "default", and with default configuration.
  /// [maxIdleDuration] Optional. The idle time configuration of the session. The session will be auto-terminated at the end of this period.
  const GoogleCloudDataplexV1EnvironmentSessionSpec({
    this.enableFastStartup,
    this.maxIdleDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableFastStartup': ?enableFastStartup,
      'maxIdleDuration': ?maxIdleDuration,
    };
  }

  factory GoogleCloudDataplexV1EnvironmentSessionSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1EnvironmentSessionSpec(
      enableFastStartup: (() { final guardedValue = map['enableFastStartup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxIdleDuration: (() { final guardedValue = map['maxIdleDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
