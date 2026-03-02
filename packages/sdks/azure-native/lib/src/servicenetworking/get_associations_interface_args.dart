// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicenetworking_get_associations_interface_args_doc}
/// Arguments for getAssociationsInterface.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_get_associations_interface_args_doc}
class GetAssociationsInterfaceArgs {
  /// Name of Association
  final pulumi.Input<String> associationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// traffic controller name for path
  final pulumi.Input<String> trafficControllerName;

  /// Creates a new [GetAssociationsInterfaceArgs].
  /// [associationName] Name of Association
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [trafficControllerName] traffic controller name for path
  GetAssociationsInterfaceArgs({
    required this.associationName,
    required this.resourceGroupName,
    required this.trafficControllerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationName': associationName,
      'resourceGroupName': resourceGroupName,
      'trafficControllerName': trafficControllerName,
    };
  }

  factory GetAssociationsInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return GetAssociationsInterfaceArgs(
      associationName: (map['associationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      trafficControllerName: (map['trafficControllerName'] as String).input(),
    );
  }
}

