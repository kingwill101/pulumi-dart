// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_security_perimeter_association_args_doc}
/// Arguments for getNetworkSecurityPerimeterAssociation.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_security_perimeter_association_args_doc}
class GetNetworkSecurityPerimeterAssociationArgs {
  /// The name of the NSP association.
  final pulumi.Input<String> associationName;
  /// The name of the network security perimeter.
  final pulumi.Input<String> networkSecurityPerimeterName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkSecurityPerimeterAssociationArgs].
  /// [associationName] The name of the NSP association.
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [resourceGroupName] The name of the resource group.
  GetNetworkSecurityPerimeterAssociationArgs({
    required pulumi.Output<String> associationName,
    required pulumi.Output<String> networkSecurityPerimeterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      associationName = pulumi.Input.asInput<String>(associationName),
      networkSecurityPerimeterName = pulumi.Input.asInput<String>(networkSecurityPerimeterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationName': associationName,
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkSecurityPerimeterAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityPerimeterAssociationArgs(
      associationName: pulumi.Output.create<String>(map['associationName'] as String),
      networkSecurityPerimeterName: pulumi.Output.create<String>(map['networkSecurityPerimeterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

