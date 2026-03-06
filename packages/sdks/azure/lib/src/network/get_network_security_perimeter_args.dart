// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_security_perimeter_get_network_security_perimeter_args_doc}
/// Arguments for getNetworkSecurityPerimeter.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_security_perimeter_get_network_security_perimeter_args_doc}
class GetNetworkSecurityPerimeterArgs {
  /// The name of this Network Security Perimeter.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Network Security Perimeter exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkSecurityPerimeterArgs].
  /// [name] The name of this Network Security Perimeter.
  /// [resourceGroupName] The name of the Resource Group where the Network Security Perimeter exists.
  const GetNetworkSecurityPerimeterArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkSecurityPerimeterArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityPerimeterArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

