// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_openenergyplatform_get_energy_service_args_doc}
/// Arguments for getEnergyService.
/// {@endtemplate}
/// {@macro pulumi_openenergyplatform_get_energy_service_args_doc}
class GetEnergyServiceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetEnergyServiceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The resource name.
  GetEnergyServiceArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetEnergyServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetEnergyServiceArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

