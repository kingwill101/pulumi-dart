// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for sessions created for this environment.
class GoogleCloudDataplexV1EnvironmentSessionSpecResponse {
  /// Optional. If True, this causes sessions to be pre-created and available for faster startup to enable interactive exploration use-cases. This defaults to False to avoid additional billed charges. These can only be set to True for the environment with name set to "default", and with default configuration.
  final pulumi.Input<bool> enableFastStartup;
  /// Optional. The idle time configuration of the session. The session will be auto-terminated at the end of this period.
  final pulumi.Input<String> maxIdleDuration;

  /// Creates a new [GoogleCloudDataplexV1EnvironmentSessionSpecResponse].
  /// [enableFastStartup] Optional. If True, this causes sessions to be pre-created and available for faster startup to enable interactive exploration use-cases. This defaults to False to avoid additional billed charges. These can only be set to True for the environment with name set to "default", and with default configuration.
  /// [maxIdleDuration] Optional. The idle time configuration of the session. The session will be auto-terminated at the end of this period.
  GoogleCloudDataplexV1EnvironmentSessionSpecResponse({
    required this.enableFastStartup,
    required this.maxIdleDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableFastStartup': enableFastStartup,
      'maxIdleDuration': maxIdleDuration,
    };
  }

  factory GoogleCloudDataplexV1EnvironmentSessionSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1EnvironmentSessionSpecResponse(
      enableFastStartup: (map['enableFastStartup'] as bool).input(),
      maxIdleDuration: (map['maxIdleDuration'] as String).input(),
    );
  }
}

