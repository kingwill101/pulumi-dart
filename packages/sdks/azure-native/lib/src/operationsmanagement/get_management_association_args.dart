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
  GetManagementAssociationArgs({
    required pulumi.Output<String> managementAssociationName,
    required pulumi.Output<String> providerName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
    required pulumi.Output<String> resourceType,
  }) :
      managementAssociationName = pulumi.Input.asInput<String>(managementAssociationName),
      providerName = pulumi.Input.asInput<String>(providerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      resourceType = pulumi.Input.asInput<String>(resourceType);

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
      managementAssociationName: pulumi.Output.create<String>(map['managementAssociationName'] as String),
      providerName: pulumi.Output.create<String>(map['providerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      resourceType: pulumi.Output.create<String>(map['resourceType'] as String),
    );
  }
}

