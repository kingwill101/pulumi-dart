// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_sku.dart';

/// {@template pulumi_signalrservice_signal_rreplica_args_doc}
/// The set of arguments for SignalRReplica.
/// {@endtemplate}
/// {@macro pulumi_signalrservice_signal_rreplica_args_doc}
class SignalRReplicaArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// Enable or disable the regional endpoint. Default to "Enabled".
  /// When it's Disabled, new connections will not be routed to this endpoint, however existing connections will not be affected.
  final pulumi.Input<String>? regionEndpointEnabled;

  /// The name of the replica.
  final pulumi.Input<String>? replicaName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Stop or start the resource.  Default to "false".
  /// When it's true, the data plane of the resource is shutdown.
  /// When it's false, the data plane of the resource is started.
  final pulumi.Input<String>? resourceStopped;

  /// The billing information of the resource.
  final pulumi.Input<ResourceSku>? sku;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SignalRReplicaArgs].
  /// [location] The geo-location where the resource lives
  /// [regionEndpointEnabled] Enable or disable the regional endpoint. Default to "Enabled".
  /// [replicaName] The name of the replica.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  /// [resourceStopped] Stop or start the resource.  Default to "false".
  /// [sku] The billing information of the resource.
  /// [tags] Resource tags.
  SignalRReplicaArgs({
    this.location,
    this.regionEndpointEnabled,
    this.replicaName,
    required this.resourceGroupName,
    required this.resourceName,
    this.resourceStopped,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'regionEndpointEnabled': ?regionEndpointEnabled,
      'replicaName': ?replicaName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'resourceStopped': ?resourceStopped,
      'sku':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceSku,
            Map<String, dynamic>
          >(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory SignalRReplicaArgs.fromMap(Map<String, dynamic> map) {
    return SignalRReplicaArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionEndpointEnabled: (() {
        final guardedValue = map['regionEndpointEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicaName: (() {
        final guardedValue = map['replicaName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      resourceStopped: (() {
        final guardedValue = map['resourceStopped'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceSku.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
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
