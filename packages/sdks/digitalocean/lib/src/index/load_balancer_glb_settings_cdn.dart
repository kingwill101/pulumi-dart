// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerGlbSettingsCdn {
  /// Control flag to specify if caching is enabled.
  final pulumi.Input<bool>? isEnabled;

  /// Creates a new [LoadBalancerGlbSettingsCdn].
  /// [isEnabled] Control flag to specify if caching is enabled.
  const LoadBalancerGlbSettingsCdn({
    this.isEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': ?isEnabled,
    };
  }

  factory LoadBalancerGlbSettingsCdn.fromMap(Map<String, dynamic> map) {
    return LoadBalancerGlbSettingsCdn(
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
