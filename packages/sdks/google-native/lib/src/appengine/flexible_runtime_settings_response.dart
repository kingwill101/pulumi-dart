// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Runtime settings for the App Engine flexible environment.
class FlexibleRuntimeSettingsResponse {
  /// The operating system of the application runtime.
  final pulumi.Input<String> operatingSystem;
  /// The runtime version of an App Engine flexible application.
  final pulumi.Input<String> runtimeVersion;

  /// Creates a new [FlexibleRuntimeSettingsResponse].
  /// [operatingSystem] The operating system of the application runtime.
  /// [runtimeVersion] The runtime version of an App Engine flexible application.
  FlexibleRuntimeSettingsResponse({
    required this.operatingSystem,
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operatingSystem': operatingSystem,
      'runtimeVersion': runtimeVersion,
    };
  }

  factory FlexibleRuntimeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return FlexibleRuntimeSettingsResponse(
      operatingSystem: (map['operatingSystem'] as String).input(),
      runtimeVersion: (map['runtimeVersion'] as String).input(),
    );
  }
}

