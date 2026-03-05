// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionFlexibleRuntimeSettings {
  /// Operating System of the application runtime.
  final pulumi.Input<String>? operatingSystem;
  /// The runtime version of an App Engine flexible application.
  final pulumi.Input<String>? runtimeVersion;

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
      operatingSystem: (() { final guardedValue = map['operatingSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

