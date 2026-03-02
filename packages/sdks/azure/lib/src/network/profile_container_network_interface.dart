// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_container_network_interface_ip_configuration.dart';

class ProfileContainerNetworkInterface {
  /// One or more `ip_configuration` blocks as documented below.
  final pulumi.Input<List<ProfileContainerNetworkInterfaceIpConfiguration>> ipConfigurations;
  /// Specifies the name of the IP Configuration.
  final pulumi.Input<String> name;

  /// Creates a new [ProfileContainerNetworkInterface].
  /// [ipConfigurations] One or more `ip_configuration` blocks as documented below.
  /// [name] Specifies the name of the IP Configuration.
  ProfileContainerNetworkInterface({
    required this.ipConfigurations,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfigurations': pulumi.Input.mapInputValue<List<ProfileContainerNetworkInterfaceIpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<ProfileContainerNetworkInterfaceIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory ProfileContainerNetworkInterface.fromMap(Map<String, dynamic> map) {
    return ProfileContainerNetworkInterface(
      ipConfigurations: (pulumi.Input.decodeList<ProfileContainerNetworkInterfaceIpConfiguration>(map['ipConfigurations'], (value) => ProfileContainerNetworkInterfaceIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
    );
  }
}

