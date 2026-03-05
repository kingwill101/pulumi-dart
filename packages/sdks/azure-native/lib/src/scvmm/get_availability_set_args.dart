// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scvmm_get_availability_set_args_doc}
/// Arguments for getAvailabilitySet.
/// {@endtemplate}
/// {@macro pulumi_scvmm_get_availability_set_args_doc}
class GetAvailabilitySetArgs {
  /// Name of the AvailabilitySet.
  final pulumi.Input<String> availabilitySetName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAvailabilitySetArgs].
  /// [availabilitySetName] Name of the AvailabilitySet.
  /// [resourceGroupName] The name of the resource group.
  GetAvailabilitySetArgs({
    required this.availabilitySetName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': availabilitySetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAvailabilitySetArgs.fromMap(Map<String, dynamic> map) {
    return GetAvailabilitySetArgs(
      availabilitySetName: pulumi.Input.fromValue(map['availabilitySetName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

