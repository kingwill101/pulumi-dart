// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalClusterNetworkConfigSrIovConfig {
  /// Whether to install the SR-IOV operator.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [BareMetalClusterNetworkConfigSrIovConfig].
  /// [enabled] Whether to install the SR-IOV operator.
  BareMetalClusterNetworkConfigSrIovConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory BareMetalClusterNetworkConfigSrIovConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterNetworkConfigSrIovConfig(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

