// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_security_perimeter_logging_configuration_args_doc}
/// Arguments for getNetworkSecurityPerimeterLoggingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_security_perimeter_logging_configuration_args_doc}
class GetNetworkSecurityPerimeterLoggingConfigurationArgs {
  /// The name of the NSP logging configuration. Accepts 'instance' as name.
  final pulumi.Input<String> loggingConfigurationName;
  /// The name of the network security perimeter.
  final pulumi.Input<String> networkSecurityPerimeterName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkSecurityPerimeterLoggingConfigurationArgs].
  /// [loggingConfigurationName] The name of the NSP logging configuration. Accepts 'instance' as name.
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [resourceGroupName] The name of the resource group.
  const GetNetworkSecurityPerimeterLoggingConfigurationArgs({
    required this.loggingConfigurationName,
    required this.networkSecurityPerimeterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfigurationName': loggingConfigurationName,
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkSecurityPerimeterLoggingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityPerimeterLoggingConfigurationArgs(
      loggingConfigurationName: pulumi.Input.fromValue(map['loggingConfigurationName'] as String),
      networkSecurityPerimeterName: pulumi.Input.fromValue(map['networkSecurityPerimeterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
