// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationsmanagement_get_management_association_args_doc}
/// Arguments for getManagementAssociation.
/// {@endtemplate}
/// {@macro pulumi_operationsmanagement_get_management_association_args_doc}
class GetManagementAssociationArgs {
  /// User ManagementAssociation Name.
  final pulumi.Input<String> managementAssociationName;
  /// Provider name for the parent resource.
  final pulumi.Input<String> providerName;
  /// The name of the resource group to get. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Parent resource name.
  final pulumi.Input<String> resourceName;
  /// Resource type for the parent resource
  final pulumi.Input<String> resourceType;

  /// Creates a new [GetManagementAssociationArgs].
  /// [managementAssociationName] User ManagementAssociation Name.
  /// [providerName] Provider name for the parent resource.
  /// [resourceGroupName] The name of the resource group to get. The name is case insensitive.
  /// [resourceName] Parent resource name.
  /// [resourceType] Resource type for the parent resource
  const GetManagementAssociationArgs({
    required this.managementAssociationName,
    required this.providerName,
    required this.resourceGroupName,
    required this.resourceName,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementAssociationName': managementAssociationName,
      'providerName': providerName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'resourceType': resourceType,
    };
  }

  factory GetManagementAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementAssociationArgs(
      managementAssociationName: pulumi.Input.fromValue(map['managementAssociationName'] as String),
      providerName: pulumi.Input.fromValue(map['providerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}

