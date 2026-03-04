// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProfileContainerNetworkInterfaceIpConfiguration {
  /// Specifies the name of the IP Configuration.
  final pulumi.Input<String> name;

  /// Reference to the subnet associated with the IP Configuration.
  final pulumi.Input<String> subnetId;

  /// Creates a new [ProfileContainerNetworkInterfaceIpConfiguration].
  /// [name] Specifies the name of the IP Configuration.
  /// [subnetId] Reference to the subnet associated with the IP Configuration.
  ProfileContainerNetworkInterfaceIpConfiguration({
    required this.name,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'subnetId': subnetId};
  }

  factory ProfileContainerNetworkInterfaceIpConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProfileContainerNetworkInterfaceIpConfiguration(
      name: pulumi.Input.fromValue(map['name'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
