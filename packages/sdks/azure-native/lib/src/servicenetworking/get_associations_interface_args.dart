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
    required pulumi.Output<String> associationName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> trafficControllerName,
  }) :
      associationName = pulumi.Input.asInput<String>(associationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      trafficControllerName = pulumi.Input.asInput<String>(trafficControllerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationName': associationName,
      'resourceGroupName': resourceGroupName,
      'trafficControllerName': trafficControllerName,
    };
  }

  factory GetAssociationsInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return GetAssociationsInterfaceArgs(
      associationName: pulumi.Output.create<String>(map['associationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      trafficControllerName: pulumi.Output.create<String>(map['trafficControllerName'] as String),
    );
  }
}

