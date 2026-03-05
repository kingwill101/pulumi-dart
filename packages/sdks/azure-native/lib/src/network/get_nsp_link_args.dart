// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_nsp_link_args_doc}
/// Arguments for getNspLink.
/// {@endtemplate}
/// {@macro pulumi_network_get_nsp_link_args_doc}
class GetNspLinkArgs {
  /// The name of the NSP link.
  final pulumi.Input<String> linkName;
  /// The name of the network security perimeter.
  final pulumi.Input<String> networkSecurityPerimeterName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNspLinkArgs].
  /// [linkName] The name of the NSP link.
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [resourceGroupName] The name of the resource group.
  GetNspLinkArgs({
    required this.linkName,
    required this.networkSecurityPerimeterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkName': linkName,
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNspLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetNspLinkArgs(
      linkName: pulumi.Input.fromValue(map['linkName'] as String),
      networkSecurityPerimeterName: pulumi.Input.fromValue(map['networkSecurityPerimeterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

