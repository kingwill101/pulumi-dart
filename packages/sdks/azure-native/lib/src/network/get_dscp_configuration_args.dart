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
  const GetDscpConfigurationArgs({
    required this.dscpConfigurationName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dscpConfigurationName': dscpConfigurationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDscpConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetDscpConfigurationArgs(
      dscpConfigurationName: pulumi.Input.fromValue(map['dscpConfigurationName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

