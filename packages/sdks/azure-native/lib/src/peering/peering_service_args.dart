// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'peering_service_sku.dart';

/// {@template pulumi_peering_peering_service_args_doc}
/// The set of arguments for PeeringService.
/// {@endtemplate}
/// {@macro pulumi_peering_peering_service_args_doc}
class PeeringServiceArgs {
  /// The location of the resource.
  final pulumi.Input<String>? location;

  /// The location (state/province) of the customer.
  final pulumi.Input<String>? peeringServiceLocation;

  /// The name of the peering service.
  final pulumi.Input<String>? peeringServiceName;

  /// The name of the service provider.
  final pulumi.Input<String>? peeringServiceProvider;

  /// The backup peering (Microsoft/service provider) location to be used for customer traffic.
  final pulumi.Input<String>? providerBackupPeeringLocation;

  /// The primary peering (Microsoft/service provider) location to be used for customer traffic.
  final pulumi.Input<String>? providerPrimaryPeeringLocation;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// The SKU that defines the type of the peering service.
  final pulumi.Input<PeeringServiceSku>? sku;

  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PeeringServiceArgs].
  /// [location] The location of the resource.
  /// [peeringServiceLocation] The location (state/province) of the customer.
  /// [peeringServiceName] The name of the peering service.
  /// [peeringServiceProvider] The name of the service provider.
  /// [providerBackupPeeringLocation] The backup peering (Microsoft/service provider) location to be used for customer traffic.
  /// [providerPrimaryPeeringLocation] The primary peering (Microsoft/service provider) location to be used for customer traffic.
  /// [resourceGroupName] The name of the resource group.
  /// [sku] The SKU that defines the type of the peering service.
  /// [tags] The resource tags.
  PeeringServiceArgs({
    this.location,
    this.peeringServiceLocation,
    this.peeringServiceName,
    this.peeringServiceProvider,
    this.providerBackupPeeringLocation,
    this.providerPrimaryPeeringLocation,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'peeringServiceLocation': ?peeringServiceLocation,
      'peeringServiceName': ?peeringServiceName,
      'peeringServiceProvider': ?peeringServiceProvider,
      'providerBackupPeeringLocation': ?providerBackupPeeringLocation,
      'providerPrimaryPeeringLocation': ?providerPrimaryPeeringLocation,
      'resourceGroupName': resourceGroupName,
      'sku':
          ?pulumi.Input.mapOptionalInputValue<
            PeeringServiceSku,
            Map<String, dynamic>
          >(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory PeeringServiceArgs.fromMap(Map<String, dynamic> map) {
    return PeeringServiceArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peeringServiceLocation: (() {
        final guardedValue = map['peeringServiceLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peeringServiceName: (() {
        final guardedValue = map['peeringServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peeringServiceProvider: (() {
        final guardedValue = map['peeringServiceProvider'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      providerBackupPeeringLocation: (() {
        final guardedValue = map['providerBackupPeeringLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      providerPrimaryPeeringLocation: (() {
        final guardedValue = map['providerPrimaryPeeringLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PeeringServiceSku.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
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
