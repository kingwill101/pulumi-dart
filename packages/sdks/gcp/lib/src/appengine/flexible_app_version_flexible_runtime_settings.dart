// ignore_for_file: unused_element, unnecessary_cast


class FlexibleAppVersionFlexibleRuntimeSettings {
  /// Operating System of the application runtime.
  final String? operatingSystem;
  /// The runtime version of an App Engine flexible application.
  final String? runtimeVersion;

  /// Creates a new [FlexibleAppVersionFlexibleRuntimeSettings].
  /// [operatingSystem] Operating System of the application runtime.
  /// [runtimeVersion] The runtime version of an App Engine flexible application.
  FlexibleAppVersionFlexibleRuntimeSettings({
    this.operatingSystem,
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operatingSystem': ?operatingSystem,
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory FlexibleAppVersionFlexibleRuntimeSettings.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionFlexibleRuntimeSettings(
      operatingSystem: map['operatingSystem'] == null ? null : map['operatingSystem'] as String,
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'] as String,
    );
  }
}

