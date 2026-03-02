// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the multiple networking interfaces cluster configuration.
class BareMetalMultipleNetworkInterfacesConfig {
  /// Whether to enable multiple network interfaces for your pods. When set network_config.advanced_networking is automatically set to true.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [BareMetalMultipleNetworkInterfacesConfig].
  /// [enabled] Whether to enable multiple network interfaces for your pods. When set network_config.advanced_networking is automatically set to true.
  BareMetalMultipleNetworkInterfacesConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory BareMetalMultipleNetworkInterfacesConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalMultipleNetworkInterfacesConfig(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

