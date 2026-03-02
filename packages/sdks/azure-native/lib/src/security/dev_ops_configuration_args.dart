// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_ops_configuration_properties.dart';

/// {@template pulumi_security_dev_ops_configuration_args_doc}
/// The set of arguments for DevOpsConfiguration.
/// {@endtemplate}
/// {@macro pulumi_security_dev_ops_configuration_args_doc}
class DevOpsConfigurationArgs {
  /// DevOps Configuration properties.
  final pulumi.Input<DevOpsConfigurationProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The security connector name.
  final pulumi.Input<String> securityConnectorName;

  /// Creates a new [DevOpsConfigurationArgs].
  /// [properties] DevOps Configuration properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityConnectorName] The security connector name.
  DevOpsConfigurationArgs({
    this.properties,
    required this.resourceGroupName,
    required this.securityConnectorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<DevOpsConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'securityConnectorName': securityConnectorName,
    };
  }

  factory DevOpsConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return DevOpsConfigurationArgs(
      properties: map['properties'] == null ? null : (DevOpsConfigurationProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      securityConnectorName: (map['securityConnectorName'] as String).input(),
    );
  }
}

