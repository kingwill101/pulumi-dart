// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_configuration_properties.dart';

/// {@template pulumi_operationsmanagement_management_configuration_args_doc}
/// The set of arguments for ManagementConfiguration.
/// {@endtemplate}
/// {@macro pulumi_operationsmanagement_management_configuration_args_doc}
class ManagementConfigurationArgs {
  /// Resource location
  final pulumi.Input<String>? location;
  /// User Management Configuration Name.
  final pulumi.Input<String>? managementConfigurationName;
  /// Properties for ManagementConfiguration object supported by the OperationsManagement resource provider.
  final pulumi.Input<ManagementConfigurationProperties>? properties;
  /// The name of the resource group to get. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ManagementConfigurationArgs].
  /// [location] Resource location
  /// [managementConfigurationName] User Management Configuration Name.
  /// [properties] Properties for ManagementConfiguration object supported by the OperationsManagement resource provider.
  /// [resourceGroupName] The name of the resource group to get. The name is case insensitive.
  ManagementConfigurationArgs({
    this.location,
    this.managementConfigurationName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'managementConfigurationName': ?managementConfigurationName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ManagementConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ManagementConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ManagementConfigurationArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementConfigurationName: (() { final guardedValue = map['managementConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagementConfigurationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

