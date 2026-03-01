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
  final pulumi.Input<List<PrivateEndpointConnectionPowerbi>>? privateEndpointConnections;
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
    pulumi.Output<String>? azureResourceName,
    pulumi.Output<String>? location,
    pulumi.Output<List<PrivateEndpointConnectionPowerbi>>? privateEndpointConnections,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tenantId,
  }) :
      azureResourceName = pulumi.Input.asOptionalInput<String>(azureResourceName),
      location = pulumi.Input.asOptionalInput<String>(location),
      privateEndpointConnections = pulumi.Input.asOptionalInput<List<PrivateEndpointConnectionPowerbi>>(privateEndpointConnections),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      azureResourceName: map['azureResourceName'] == null ? null : pulumi.Output.create<String>(map['azureResourceName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Output.create<List<PrivateEndpointConnectionPowerbi>>((map['privateEndpointConnections'] as List).cast<PrivateEndpointConnectionPowerbi>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

