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
    this.connectorName,
    this.identity,
    this.location,
    this.managedResourceGroupConfiguration,
    required this.resourceGroupName,
    required this.sourceResourceId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': ?connectorName,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            UserAssignedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'managedResourceGroupConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedRGConfiguration,
            Map<String, dynamic>
          >(managedResourceGroupConfiguration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sourceResourceId': sourceResourceId,
      'tags': ?tags,
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      connectorName: (() {
        final guardedValue = map['connectorName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UserAssignedServiceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedResourceGroupConfiguration: (() {
        final guardedValue = map['managedResourceGroupConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedRGConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sourceResourceId: pulumi.Input.fromValue(
        map['sourceResourceId'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
