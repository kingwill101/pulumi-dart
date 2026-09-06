// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_swift_virtual_network_connection_args_doc}
/// The set of arguments for WebAppSwiftVirtualNetworkConnection.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_swift_virtual_network_connection_args_doc}
class WebAppSwiftVirtualNetworkConnectionArgs {
  /// Kind of resource.
  final pulumi.Input<String?>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The Virtual Network subnet's resource ID. This is the subnet that this Web App will join. This subnet must have a delegation to Microsoft.Web/serverFarms defined first.
  final pulumi.Input<String?>? subnetResourceId;
  /// A flag that specifies if the scale unit this Web App is on supports Swift integration.
  final pulumi.Input<bool?>? swiftSupported;

  /// Creates a new [WebAppSwiftVirtualNetworkConnectionArgs].
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subnetResourceId] The Virtual Network subnet's resource ID. This is the subnet that this Web App will join. This subnet must have a delegation to Microsoft.Web/serverFarms defined first.
  /// [swiftSupported] A flag that specifies if the scale unit this Web App is on supports Swift integration.
  const WebAppSwiftVirtualNetworkConnectionArgs({
    this.kind,
    required this.name,
    required this.resourceGroupName,
    this.subnetResourceId,
    this.swiftSupported,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'subnetResourceId': ?subnetResourceId,
      'swiftSupported': ?swiftSupported,
    };
  }

  factory WebAppSwiftVirtualNetworkConnectionArgs.fromMap(Map<String, dynamic> map) {
    return WebAppSwiftVirtualNetworkConnectionArgs(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subnetResourceId: (() { final guardedValue = map['subnetResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      swiftSupported: (() { final guardedValue = map['swiftSupported']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
