// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the multiple networking interfaces cluster configuration.
class BareMetalMultipleNetworkInterfacesConfigResponse {
  /// Whether to enable multiple network interfaces for your pods. When set network_config.advanced_networking is automatically set to true.
  final pulumi.Input<bool> enabled;

  /// Creates a new [BareMetalMultipleNetworkInterfacesConfigResponse].
  /// [enabled] Whether to enable multiple network interfaces for your pods. When set network_config.advanced_networking is automatically set to true.
  const BareMetalMultipleNetworkInterfacesConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory BareMetalMultipleNetworkInterfacesConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalMultipleNetworkInterfacesConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

