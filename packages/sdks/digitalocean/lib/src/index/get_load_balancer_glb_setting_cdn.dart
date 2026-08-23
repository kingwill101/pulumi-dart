// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerGlbSettingCdn {
  /// cache enable flag
  final pulumi.Input<bool> isEnabled;

  /// Creates a new [GetLoadBalancerGlbSettingCdn].
  /// [isEnabled] cache enable flag
  const GetLoadBalancerGlbSettingCdn({
    required this.isEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': isEnabled,
    };
  }

  factory GetLoadBalancerGlbSettingCdn.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerGlbSettingCdn(
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
    );
  }
}
