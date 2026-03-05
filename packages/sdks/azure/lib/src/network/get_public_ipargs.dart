// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_public_ip_get_public_ipargs_doc}
/// Arguments for getPublicIP.
/// {@endtemplate}
/// {@macro pulumi_network_get_public_ip_get_public_ipargs_doc}
class GetPublicIPArgs {
  /// Specifies the name of the public IP address.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPublicIPArgs].
  /// [name] Specifies the name of the public IP address.
  /// [resourceGroupName] Specifies the name of the resource group.
  GetPublicIPArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPublicIPArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicIPArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

