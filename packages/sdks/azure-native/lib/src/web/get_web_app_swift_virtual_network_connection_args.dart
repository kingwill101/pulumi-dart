// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_swift_virtual_network_connection_args_doc}
/// Arguments for getWebAppSwiftVirtualNetworkConnection.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_swift_virtual_network_connection_args_doc}
class GetWebAppSwiftVirtualNetworkConnectionArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppSwiftVirtualNetworkConnectionArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetWebAppSwiftVirtualNetworkConnectionArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppSwiftVirtualNetworkConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppSwiftVirtualNetworkConnectionArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

