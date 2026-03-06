// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity.dart';
import 'monitoring_instance_properties.dart';

/// {@template pulumi_scom_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_scom_instance_args_doc}
class InstanceArgs {
  /// The Azure Active Directory identity of the SCOM instance
  final pulumi.Input<ManagedIdentity>? identity;
  /// Name of the Azure Monitor Operations Manager Managed Instance (SCOM MI)
  final pulumi.Input<String>? instanceName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The properties of a SCOM instance resource
  final pulumi.Input<MonitoringInstanceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Validation mode for the SCOM managed instance
  final pulumi.Input<bool>? validationMode;

  /// Creates a new [InstanceArgs].
  /// [identity] The Azure Active Directory identity of the SCOM instance
  /// [instanceName] Name of the Azure Monitor Operations Manager Managed Instance (SCOM MI)
  /// [location] The geo-location where the resource lives
  /// [properties] The properties of a SCOM instance resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [validationMode] Validation mode for the SCOM managed instance
  const InstanceArgs({
    this.identity,
    this.instanceName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
    this.validationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'instanceName': ?instanceName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<MonitoringInstanceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'validationMode': ?validationMode,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitoringInstanceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      validationMode: (() { final guardedValue = map['validationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

