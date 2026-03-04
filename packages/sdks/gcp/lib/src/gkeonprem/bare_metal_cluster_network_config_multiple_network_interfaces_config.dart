// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig {
  /// Whether to enable multiple network interfaces for your pods.
  /// When set network_config.advanced_networking is automatically
  /// set to true.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig].
  /// [enabled] Whether to enable multiple network interfaces for your pods.
  BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
