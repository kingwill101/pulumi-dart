// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nsp_logging_configuration_properties.dart';

/// {@template pulumi_network_network_security_perimeter_logging_configuration_args_doc}
/// The set of arguments for NetworkSecurityPerimeterLoggingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_network_security_perimeter_logging_configuration_args_doc}
class NetworkSecurityPerimeterLoggingConfigurationArgs {
  /// The name of the NSP logging configuration. Accepts 'instance' as name.
  final pulumi.Input<String?>? loggingConfigurationName;
  /// The name of the network security perimeter.
  final pulumi.Input<String> networkSecurityPerimeterName;
  /// Properties of the NSP logging configuration.
  final pulumi.Input<NspLoggingConfigurationProperties?>? properties;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [NetworkSecurityPerimeterLoggingConfigurationArgs].
  /// [loggingConfigurationName] The name of the NSP logging configuration. Accepts 'instance' as name.
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [properties] Properties of the NSP logging configuration.
  /// [resourceGroupName] The name of the resource group.
  const NetworkSecurityPerimeterLoggingConfigurationArgs({
    this.loggingConfigurationName,
    required this.networkSecurityPerimeterName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfigurationName': ?loggingConfigurationName,
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'properties': ?pulumi.Input.mapOptionalInputValue<NspLoggingConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory NetworkSecurityPerimeterLoggingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterLoggingConfigurationArgs(
      loggingConfigurationName: (() { final guardedValue = map['loggingConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkSecurityPerimeterName: pulumi.Input.fromValue(map['networkSecurityPerimeterName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NspLoggingConfigurationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
