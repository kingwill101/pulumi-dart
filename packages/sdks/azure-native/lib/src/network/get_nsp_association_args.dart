// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_nsp_association_args_doc}
/// Arguments for getNspAssociation.
/// {@endtemplate}
/// {@macro pulumi_network_get_nsp_association_args_doc}
class GetNspAssociationArgs {
  /// The name of the NSP association.
  final pulumi.Input<String> associationName;
  /// The name of the network security perimeter.
  final pulumi.Input<String> networkSecurityPerimeterName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNspAssociationArgs].
  /// [associationName] The name of the NSP association.
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [resourceGroupName] The name of the resource group.
  GetNspAssociationArgs({
    required this.associationName,
    required this.networkSecurityPerimeterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationName': associationName,
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNspAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetNspAssociationArgs(
      associationName: (map['associationName'] as String).input(),
      networkSecurityPerimeterName: (map['networkSecurityPerimeterName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

