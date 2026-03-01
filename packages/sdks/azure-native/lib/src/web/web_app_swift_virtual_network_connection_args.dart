// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_swift_virtual_network_connection_args_doc}
/// The set of arguments for WebAppSwiftVirtualNetworkConnection.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_swift_virtual_network_connection_args_doc}
class WebAppSwiftVirtualNetworkConnectionArgs {
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The Virtual Network subnet's resource ID. This is the subnet that this Web App will join. This subnet must have a delegation to Microsoft.Web/serverFarms defined first.
  final pulumi.Input<String>? subnetResourceId;
  /// A flag that specifies if the scale unit this Web App is on supports Swift integration.
  final pulumi.Input<bool>? swiftSupported;

  /// Creates a new [WebAppSwiftVirtualNetworkConnectionArgs].
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [subnetResourceId] The Virtual Network subnet's resource ID. This is the subnet that this Web App will join. This subnet must have a delegation to Microsoft.Web/serverFarms defined first.
  /// [swiftSupported] A flag that specifies if the scale unit this Web App is on supports Swift integration.
  WebAppSwiftVirtualNetworkConnectionArgs({
    pulumi.Output<String>? kind,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? subnetResourceId,
    pulumi.Output<bool>? swiftSupported,
  }) :
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subnetResourceId = pulumi.Input.asOptionalInput<String>(subnetResourceId),
      swiftSupported = pulumi.Input.asOptionalInput<bool>(swiftSupported);

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
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subnetResourceId: map['subnetResourceId'] == null ? null : pulumi.Output.create<String>(map['subnetResourceId'] as String),
      swiftSupported: map['swiftSupported'] == null ? null : pulumi.Output.create<bool>(map['swiftSupported'] as bool),
    );
  }
}

