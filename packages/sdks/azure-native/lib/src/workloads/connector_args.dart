// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rgconfiguration.dart';
import 'user_assigned_service_identity.dart';

/// {@template pulumi_workloads_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_workloads_connector_args_doc}
class ConnectorArgs {
  /// The name of the connector resource
  final pulumi.Input<String>? connectorName;
  /// Managed service identity (user assigned identities)
  final pulumi.Input<UserAssignedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Managed resource group configuration
  final pulumi.Input<ManagedRGConfiguration>? managedResourceGroupConfiguration;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Defines the ID of the connector's source resource.
  final pulumi.Input<String> sourceResourceId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConnectorArgs].
  /// [connectorName] The name of the connector resource
  /// [identity] Managed service identity (user assigned identities)
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroupConfiguration] Managed resource group configuration
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceResourceId] Defines the ID of the connector's source resource.
  /// [tags] Resource tags.
  ConnectorArgs({
    pulumi.Output<String>? connectorName,
    pulumi.Output<UserAssignedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<ManagedRGConfiguration>? managedResourceGroupConfiguration,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sourceResourceId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      connectorName = pulumi.Input.asOptionalInput<String>(connectorName),
      identity = pulumi.Input.asOptionalInput<UserAssignedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedResourceGroupConfiguration = pulumi.Input.asOptionalInput<ManagedRGConfiguration>(managedResourceGroupConfiguration),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceResourceId = pulumi.Input.asInput<String>(sourceResourceId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': ?connectorName,
      'identity': ?pulumi.Input.mapOptionalInputValue<UserAssignedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managedResourceGroupConfiguration': ?pulumi.Input.mapOptionalInputValue<ManagedRGConfiguration, Map<String, dynamic>>(managedResourceGroupConfiguration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sourceResourceId': sourceResourceId,
      'tags': ?tags,
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      connectorName: map['connectorName'] == null ? null : pulumi.Output.create<String>(map['connectorName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<UserAssignedServiceIdentity>(UserAssignedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedResourceGroupConfiguration: map['managedResourceGroupConfiguration'] == null ? null : pulumi.Output.create<ManagedRGConfiguration>(ManagedRGConfiguration.fromMap((map['managedResourceGroupConfiguration'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceResourceId: pulumi.Output.create<String>(map['sourceResourceId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

