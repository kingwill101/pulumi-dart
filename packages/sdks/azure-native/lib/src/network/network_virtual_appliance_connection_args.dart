// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_virtual_appliance_connection_properties.dart';

/// {@template pulumi_network_network_virtual_appliance_connection_args_doc}
/// The set of arguments for NetworkVirtualApplianceConnection.
/// {@endtemplate}
/// {@macro pulumi_network_network_virtual_appliance_connection_args_doc}
class NetworkVirtualApplianceConnectionArgs {
  /// The name of the NVA connection.
  final pulumi.Input<String>? connectionName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource.
  final pulumi.Input<String>? name;
  /// The name of the Network Virtual Appliance.
  final pulumi.Input<String> networkVirtualApplianceName;
  /// Properties of the express route connection.
  final pulumi.Input<NetworkVirtualApplianceConnectionProperties>? properties;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [NetworkVirtualApplianceConnectionArgs].
  /// [connectionName] The name of the NVA connection.
  /// [id] Resource ID.
  /// [name] The name of the resource.
  /// [networkVirtualApplianceName] The name of the Network Virtual Appliance.
  /// [properties] Properties of the express route connection.
  /// [resourceGroupName] The name of the resource group.
  NetworkVirtualApplianceConnectionArgs({
    this.connectionName,
    this.id,
    this.name,
    required this.networkVirtualApplianceName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'id': ?id,
      'name': ?name,
      'networkVirtualApplianceName': networkVirtualApplianceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<NetworkVirtualApplianceConnectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory NetworkVirtualApplianceConnectionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkVirtualApplianceConnectionArgs(
      connectionName: (() { final guardedValue = map['connectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkVirtualApplianceName: pulumi.Input.fromValue(map['networkVirtualApplianceName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkVirtualApplianceConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

