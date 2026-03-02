// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_virtual_network_swift_connection_virtual_network_swift_connection_args_doc}
/// The set of arguments for VirtualNetworkSwiftConnection.
/// {@endtemplate}
/// {@macro pulumi_appservice_virtual_network_swift_connection_virtual_network_swift_connection_args_doc}
class VirtualNetworkSwiftConnectionArgs {
  /// The ID of the App Service or Function App to associate to the VNet. Changing this forces a new resource to be created.
  final pulumi.Input<String> appServiceId;
  /// The ID of the subnet the app service will be associated to (the subnet must have a `service_delegation` configured for `Microsoft.Web/serverFarms`).
  final pulumi.Input<String> subnetId;

  /// Creates a new [VirtualNetworkSwiftConnectionArgs].
  /// [appServiceId] The ID of the App Service or Function App to associate to the VNet. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the subnet the app service will be associated to (the subnet must have a `service_delegation` configured for `Microsoft.Web/serverFarms`).
  VirtualNetworkSwiftConnectionArgs({
    required this.appServiceId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceId': appServiceId,
      'subnetId': subnetId,
    };
  }

  factory VirtualNetworkSwiftConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSwiftConnectionArgs(
      appServiceId: (map['appServiceId'] as String).input(),
      subnetId: (map['subnetId'] as String).input(),
    );
  }
}

