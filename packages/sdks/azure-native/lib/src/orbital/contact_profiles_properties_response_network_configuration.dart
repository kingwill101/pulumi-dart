// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network configuration of customer virtual network.
class ContactProfilesPropertiesResponseNetworkConfiguration {
  /// ARM resource identifier of the subnet delegated to the Microsoft.Orbital/orbitalGateways. Needs to be at least a class C subnet, and should not have any IP created in it.
  final pulumi.Input<String> subnetId;

  /// Creates a new [ContactProfilesPropertiesResponseNetworkConfiguration].
  /// [subnetId] ARM resource identifier of the subnet delegated to the Microsoft.Orbital/orbitalGateways. Needs to be at least a class C subnet, and should not have any IP created in it.
  ContactProfilesPropertiesResponseNetworkConfiguration({
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': subnetId,
    };
  }

  factory ContactProfilesPropertiesResponseNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return ContactProfilesPropertiesResponseNetworkConfiguration(
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

