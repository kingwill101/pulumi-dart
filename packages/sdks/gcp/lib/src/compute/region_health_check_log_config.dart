// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionHealthCheckLogConfig {
  /// Indicates whether or not to export logs. This is false by default,
  /// which means no health check logging will be done.
  final pulumi.Input<bool>? enable;

  /// Creates a new [RegionHealthCheckLogConfig].
  /// [enable] Indicates whether or not to export logs. This is false by default,
  RegionHealthCheckLogConfig({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory RegionHealthCheckLogConfig.fromMap(Map<String, dynamic> map) {
    return RegionHealthCheckLogConfig(
      enable: map['enable'] == null ? null : (map['enable'] as bool).input(),
    );
  }
}

