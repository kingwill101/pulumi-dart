// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_association_properties.dart';

/// {@template pulumi_operationsmanagement_management_association_args_doc}
/// The set of arguments for ManagementAssociation.
/// {@endtemplate}
/// {@macro pulumi_operationsmanagement_management_association_args_doc}
class ManagementAssociationArgs {
  /// Resource location
  final pulumi.Input<String>? location;
  /// User ManagementAssociation Name.
  final pulumi.Input<String>? managementAssociationName;
  /// Properties for ManagementAssociation object supported by the OperationsManagement resource provider.
  final pulumi.Input<ManagementAssociationProperties>? properties;
  /// Provider name for the parent resource.
  final pulumi.Input<String> providerName;
  /// The name of the resource group to get. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Parent resource name.
  final pulumi.Input<String> resourceName;
  /// Resource type for the parent resource
  final pulumi.Input<String> resourceType;

  /// Creates a new [ManagementAssociationArgs].
  /// [location] Resource location
  /// [managementAssociationName] User ManagementAssociation Name.
  /// [properties] Properties for ManagementAssociation object supported by the OperationsManagement resource provider.
  /// [providerName] Provider name for the parent resource.
  /// [resourceGroupName] The name of the resource group to get. The name is case insensitive.
  /// [resourceName] Parent resource name.
  /// [resourceType] Resource type for the parent resource
  const ManagementAssociationArgs({
    this.location,
    this.managementAssociationName,
    this.properties,
    required this.providerName,
    required this.resourceGroupName,
    required this.resourceName,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'managementAssociationName': ?managementAssociationName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ManagementAssociationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'providerName': providerName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'resourceType': resourceType,
    };
  }

  factory ManagementAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ManagementAssociationArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementAssociationName: (() { final guardedValue = map['managementAssociationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagementAssociationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      providerName: pulumi.Input.fromValue(map['providerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}

