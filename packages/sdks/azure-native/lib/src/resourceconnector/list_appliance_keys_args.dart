// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourceconnector_list_appliance_keys_args_doc}
/// Arguments for listApplianceKeys.
/// {@endtemplate}
/// {@macro pulumi_resourceconnector_list_appliance_keys_args_doc}
class ListApplianceKeysArgs {
  /// This sets the type of artifact being returned, when empty no artifact endpoint is returned.
  final pulumi.Input<String>? artifactType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Appliances name.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ListApplianceKeysArgs].
  /// [artifactType] This sets the type of artifact being returned, when empty no artifact endpoint is returned.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] Appliances name.
  ListApplianceKeysArgs({
    pulumi.Output<String>? artifactType,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      artifactType = pulumi.Input.asOptionalInput<String>(artifactType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactType': ?artifactType,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ListApplianceKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListApplianceKeysArgs(
      artifactType: map['artifactType'] == null ? null : pulumi.Output.create<String>(map['artifactType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

