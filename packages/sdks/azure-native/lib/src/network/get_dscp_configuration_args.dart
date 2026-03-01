// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_dscp_configuration_args_doc}
/// Arguments for getDscpConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_get_dscp_configuration_args_doc}
class GetDscpConfigurationArgs {
  /// The name of the resource.
  final pulumi.Input<String> dscpConfigurationName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDscpConfigurationArgs].
  /// [dscpConfigurationName] The name of the resource.
  /// [resourceGroupName] The name of the resource group.
  GetDscpConfigurationArgs({
    required pulumi.Output<String> dscpConfigurationName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      dscpConfigurationName = pulumi.Input.asInput<String>(dscpConfigurationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dscpConfigurationName': dscpConfigurationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDscpConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetDscpConfigurationArgs(
      dscpConfigurationName: pulumi.Output.create<String>(map['dscpConfigurationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

