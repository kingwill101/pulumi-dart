// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'association_subnet.dart';

/// {@template pulumi_servicenetworking_associations_interface_args_doc}
/// The set of arguments for AssociationsInterface.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_associations_interface_args_doc}
class AssociationsInterfaceArgs {
  /// Name of Association
  final pulumi.Input<String?>? associationName;
  /// Association Type
  final pulumi.Input<dynamic> associationType;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Association Subnet
  final pulumi.Input<AssociationSubnet?>? subnet;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// traffic controller name for path
  final pulumi.Input<String> trafficControllerName;

  /// Creates a new [AssociationsInterfaceArgs].
  /// [associationName] Name of Association
  /// [associationType] Association Type
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subnet] Association Subnet
  /// [tags] Resource tags.
  /// [trafficControllerName] traffic controller name for path
  const AssociationsInterfaceArgs({
    this.associationName,
    required this.associationType,
    this.location,
    required this.resourceGroupName,
    this.subnet,
    this.tags,
    required this.trafficControllerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationName': ?associationName,
      'associationType': associationType,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'subnet': ?pulumi.Input.mapOptionalInputValue<AssociationSubnet, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'tags': ?tags,
      'trafficControllerName': trafficControllerName,
    };
  }

  factory AssociationsInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return AssociationsInterfaceArgs(
      associationName: (() { final guardedValue = map['associationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associationType: pulumi.Input.fromValue(map['associationType']),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssociationSubnet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trafficControllerName: pulumi.Input.fromValue(map['trafficControllerName'] as String),
    );
  }
}
