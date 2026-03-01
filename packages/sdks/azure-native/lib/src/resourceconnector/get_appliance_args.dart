// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourceconnector_get_appliance_args_doc}
/// Arguments for getAppliance.
/// {@endtemplate}
/// {@macro pulumi_resourceconnector_get_appliance_args_doc}
class GetApplianceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Appliances name.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetApplianceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] Appliances name.
  GetApplianceArgs({
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

  factory GetApplianceArgs.fromMap(Map<String, dynamic> map) {
    return GetApplianceArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

