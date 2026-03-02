// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerGlbSettingsCdn {
  /// Control flag to specify if caching is enabled.
  final pulumi.Input<bool>? isEnabled;

  /// Creates a new [LoadBalancerGlbSettingsCdn].
  /// [isEnabled] Control flag to specify if caching is enabled.
  LoadBalancerGlbSettingsCdn({
    this.isEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': ?isEnabled,
    };
  }

  factory LoadBalancerGlbSettingsCdn.fromMap(Map<String, dynamic> map) {
    return LoadBalancerGlbSettingsCdn(
      isEnabled: map['isEnabled'] == null ? null : (map['isEnabled'] as bool).input(),
    );
  }
}

