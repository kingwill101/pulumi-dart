// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_vnet_connection_args_doc}
/// Arguments for getWebAppVnetConnection.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_vnet_connection_args_doc}
class GetWebAppVnetConnectionArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the virtual network.
  final pulumi.Input<String> vnetName;

  /// Creates a new [GetWebAppVnetConnectionArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [vnetName] Name of the virtual network.
  const GetWebAppVnetConnectionArgs({
    required this.name,
    required this.resourceGroupName,
    required this.vnetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'vnetName': vnetName,
    };
  }

  factory GetWebAppVnetConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppVnetConnectionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vnetName: pulumi.Input.fromValue(map['vnetName'] as String),
    );
  }
}

