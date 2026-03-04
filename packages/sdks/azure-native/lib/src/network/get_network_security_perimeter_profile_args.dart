// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_security_perimeter_profile_args_doc}
/// Arguments for getNetworkSecurityPerimeterProfile.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_security_perimeter_profile_args_doc}
class GetNetworkSecurityPerimeterProfileArgs {
  /// The name of the network security perimeter.
  final pulumi.Input<String> networkSecurityPerimeterName;

  /// The name of the NSP profile.
  final pulumi.Input<String> profileName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkSecurityPerimeterProfileArgs].
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [profileName] The name of the NSP profile.
  /// [resourceGroupName] The name of the resource group.
  GetNetworkSecurityPerimeterProfileArgs({
    required this.networkSecurityPerimeterName,
    required this.profileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkSecurityPerimeterProfileArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkSecurityPerimeterProfileArgs(
      networkSecurityPerimeterName: pulumi.Input.fromValue(
        map['networkSecurityPerimeterName'] as String,
      ),
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
