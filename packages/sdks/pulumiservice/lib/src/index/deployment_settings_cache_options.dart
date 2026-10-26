// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dependency cache settings for the deployment
class DeploymentSettingsCacheOptions {
  /// Enable dependency caching
  final pulumi.Input<bool?>? enable;

  /// Creates a new [DeploymentSettingsCacheOptions].
  /// [enable] Enable dependency caching
  DeploymentSettingsCacheOptions({
    pulumi.Input<bool?>? enable,
  }) : enable = enable ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory DeploymentSettingsCacheOptions.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsCacheOptions(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
