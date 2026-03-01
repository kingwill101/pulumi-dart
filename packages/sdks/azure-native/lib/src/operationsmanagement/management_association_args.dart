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
  ManagementAssociationArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? managementAssociationName,
    pulumi.Output<ManagementAssociationProperties>? properties,
    required pulumi.Output<String> providerName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
    required pulumi.Output<String> resourceType,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      managementAssociationName = pulumi.Input.asOptionalInput<String>(managementAssociationName),
      properties = pulumi.Input.asOptionalInput<ManagementAssociationProperties>(properties),
      providerName = pulumi.Input.asInput<String>(providerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      resourceType = pulumi.Input.asInput<String>(resourceType);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managementAssociationName: map['managementAssociationName'] == null ? null : pulumi.Output.create<String>(map['managementAssociationName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ManagementAssociationProperties>(ManagementAssociationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      providerName: pulumi.Output.create<String>(map['providerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      resourceType: pulumi.Output.create<String>(map['resourceType'] as String),
    );
  }
}

