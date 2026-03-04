// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceWorkforceIdentityFederationConfig {
  /// 'Whether Workforce Identity Federation is enabled.'
  final pulumi.Input<bool> enabled;

  /// Creates a new [InstanceWorkforceIdentityFederationConfig].
  /// [enabled] 'Whether Workforce Identity Federation is enabled.'
  InstanceWorkforceIdentityFederationConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory InstanceWorkforceIdentityFederationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceWorkforceIdentityFederationConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
