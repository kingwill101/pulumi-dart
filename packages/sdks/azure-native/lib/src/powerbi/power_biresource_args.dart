// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_powerbi.dart';

/// {@template pulumi_powerbi_power_biresource_args_doc}
/// The set of arguments for PowerBIResource.
/// {@endtemplate}
/// {@macro pulumi_powerbi_power_biresource_args_doc}
class PowerBIResourceArgs {
  /// The name of the Azure resource.
  final pulumi.Input<String>? azureResourceName;

  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;

  /// Specifies the private endpoint connections of the resource.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<PrivateEndpointConnectionPowerbi>>?
  privateEndpointConnections;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Specifies the tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Specifies the tenant id of the resource.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [PowerBIResourceArgs].
  /// [azureResourceName] The name of the Azure resource.
  /// [location] Specifies the location of the resource.
  /// [privateEndpointConnections] Specifies the private endpoint connections of the resource.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Specifies the tags of the resource.
  /// [tenantId] Specifies the tenant id of the resource.
  PowerBIResourceArgs({
    this.azureResourceName,
    this.location,
    this.privateEndpointConnections,
    required this.resourceGroupName,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureResourceName': ?azureResourceName,
      'location': ?location,
      'privateEndpointConnections': ?privateEndpointConnections,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory PowerBIResourceArgs.fromMap(Map<String, dynamic> map) {
    return PowerBIResourceArgs(
      azureResourceName: (() {
        final guardedValue = map['azureResourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateEndpointConnections: (() {
        final guardedValue = map['privateEndpointConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as List).cast<PrivateEndpointConnectionPowerbi>(),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
