// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the network configuration type for SAP system infrastructure that is being deployed
class NetworkConfiguration {
  /// Specifies whether a secondary IP address should be added to the network interface on all VMs of the SAP system being deployed
  final pulumi.Input<bool>? isSecondaryIpEnabled;

  /// Creates a new [NetworkConfiguration].
  /// [isSecondaryIpEnabled] Specifies whether a secondary IP address should be added to the network interface on all VMs of the SAP system being deployed
  NetworkConfiguration({this.isSecondaryIpEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'isSecondaryIpEnabled': ?isSecondaryIpEnabled};
  }

  factory NetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkConfiguration(
      isSecondaryIpEnabled: (() {
        final guardedValue = map['isSecondaryIpEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
