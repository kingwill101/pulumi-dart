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
  GetAvailabilitySetArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAvailabilitySetArgs.fromMap(Map<String, dynamic> map) {
    return GetAvailabilitySetArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

