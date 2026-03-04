// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_availability_set_get_availability_set_args_doc}
/// Arguments for getAvailabilitySet.
/// {@endtemplate}
/// {@macro pulumi_compute_get_availability_set_get_availability_set_args_doc}
class GetAvailabilitySetArgs {
  /// The name of the Availability Set.
  final pulumi.Input<String> name;

  /// The name of the resource group in which the Availability Set exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAvailabilitySetArgs].
  /// [name] The name of the Availability Set.
  /// [resourceGroupName] The name of the resource group in which the Availability Set exists.
  GetAvailabilitySetArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAvailabilitySetArgs.fromMap(Map<String, dynamic> map) {
    return GetAvailabilitySetArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
