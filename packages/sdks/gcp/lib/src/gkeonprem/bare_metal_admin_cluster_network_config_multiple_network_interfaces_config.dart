// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig {
  /// When set network_config.advanced_networking is automatically
  /// set to true.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig].
  /// [enabled] When set network_config.advanced_networking is automatically
  BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
