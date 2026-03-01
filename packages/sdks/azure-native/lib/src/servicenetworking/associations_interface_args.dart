// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'association_subnet.dart';

/// {@template pulumi_servicenetworking_associations_interface_args_doc}
/// The set of arguments for AssociationsInterface.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_associations_interface_args_doc}
class AssociationsInterfaceArgs {
  /// Name of Association
  final pulumi.Input<String>? associationName;
  /// Association Type
  final pulumi.Input<String> associationType;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Association Subnet
  final pulumi.Input<AssociationSubnet>? subnet;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
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
  AssociationsInterfaceArgs({
    pulumi.Output<String>? associationName,
    required pulumi.Output<String> associationType,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<AssociationSubnet>? subnet,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> trafficControllerName,
  }) :
      associationName = pulumi.Input.asOptionalInput<String>(associationName),
      associationType = pulumi.Input.asInput<String>(associationType),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subnet = pulumi.Input.asOptionalInput<AssociationSubnet>(subnet),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trafficControllerName = pulumi.Input.asInput<String>(trafficControllerName);

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
      associationName: map['associationName'] == null ? null : pulumi.Output.create<String>(map['associationName'] as String),
      associationType: pulumi.Output.create<String>(map['associationType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subnet: map['subnet'] == null ? null : pulumi.Output.create<AssociationSubnet>(AssociationSubnet.fromMap((map['subnet'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trafficControllerName: pulumi.Output.create<String>(map['trafficControllerName'] as String),
    );
  }
}

