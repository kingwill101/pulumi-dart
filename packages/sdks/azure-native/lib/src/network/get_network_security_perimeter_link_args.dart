// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_security_perimeter_link_args_doc}
/// Arguments for getNetworkSecurityPerimeterLink.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_security_perimeter_link_args_doc}
class GetNetworkSecurityPerimeterLinkArgs {
  /// The name of the NSP link.
  final pulumi.Input<String> linkName;
  /// The name of the network security perimeter.
  final pulumi.Input<String> networkSecurityPerimeterName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkSecurityPerimeterLinkArgs].
  /// [linkName] The name of the NSP link.
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [resourceGroupName] The name of the resource group.
  GetNetworkSecurityPerimeterLinkArgs({
    required pulumi.Output<String> linkName,
    required pulumi.Output<String> networkSecurityPerimeterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      linkName = pulumi.Input.asInput<String>(linkName),
      networkSecurityPerimeterName = pulumi.Input.asInput<String>(networkSecurityPerimeterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkName': linkName,
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkSecurityPerimeterLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityPerimeterLinkArgs(
      linkName: pulumi.Output.create<String>(map['linkName'] as String),
      networkSecurityPerimeterName: pulumi.Output.create<String>(map['networkSecurityPerimeterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

