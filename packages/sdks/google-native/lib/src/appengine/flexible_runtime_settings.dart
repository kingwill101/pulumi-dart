// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Runtime settings for the App Engine flexible environment.
class FlexibleRuntimeSettings {
  /// The operating system of the application runtime.
  final pulumi.Input<String>? operatingSystem;
  /// The runtime version of an App Engine flexible application.
  final pulumi.Input<String>? runtimeVersion;

  /// Creates a new [FlexibleRuntimeSettings].
  /// [operatingSystem] The operating system of the application runtime.
  /// [runtimeVersion] The runtime version of an App Engine flexible application.
  FlexibleRuntimeSettings({
    this.operatingSystem,
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operatingSystem': ?operatingSystem,
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory FlexibleRuntimeSettings.fromMap(Map<String, dynamic> map) {
    return FlexibleRuntimeSettings(
      operatingSystem: map['operatingSystem'] == null ? null : (map['operatingSystem'] as String).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion'] as String).input(),
    );
  }
}

