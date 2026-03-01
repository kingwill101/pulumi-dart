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
    pulumi.Output<String>? location,
    pulumi.Output<String>? peeringServiceLocation,
    pulumi.Output<String>? peeringServiceName,
    pulumi.Output<String>? peeringServiceProvider,
    pulumi.Output<String>? providerBackupPeeringLocation,
    pulumi.Output<String>? providerPrimaryPeeringLocation,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<PeeringServiceSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      peeringServiceLocation = pulumi.Input.asOptionalInput<String>(peeringServiceLocation),
      peeringServiceName = pulumi.Input.asOptionalInput<String>(peeringServiceName),
      peeringServiceProvider = pulumi.Input.asOptionalInput<String>(peeringServiceProvider),
      providerBackupPeeringLocation = pulumi.Input.asOptionalInput<String>(providerBackupPeeringLocation),
      providerPrimaryPeeringLocation = pulumi.Input.asOptionalInput<String>(providerPrimaryPeeringLocation),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<PeeringServiceSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'peeringServiceLocation': ?peeringServiceLocation,
      'peeringServiceName': ?peeringServiceName,
      'peeringServiceProvider': ?peeringServiceProvider,
      'providerBackupPeeringLocation': ?providerBackupPeeringLocation,
      'providerPrimaryPeeringLocation': ?providerPrimaryPeeringLocation,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<PeeringServiceSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory PeeringServiceArgs.fromMap(Map<String, dynamic> map) {
    return PeeringServiceArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      peeringServiceLocation: map['peeringServiceLocation'] == null ? null : pulumi.Output.create<String>(map['peeringServiceLocation'] as String),
      peeringServiceName: map['peeringServiceName'] == null ? null : pulumi.Output.create<String>(map['peeringServiceName'] as String),
      peeringServiceProvider: map['peeringServiceProvider'] == null ? null : pulumi.Output.create<String>(map['peeringServiceProvider'] as String),
      providerBackupPeeringLocation: map['providerBackupPeeringLocation'] == null ? null : pulumi.Output.create<String>(map['providerBackupPeeringLocation'] as String),
      providerPrimaryPeeringLocation: map['providerPrimaryPeeringLocation'] == null ? null : pulumi.Output.create<String>(map['providerPrimaryPeeringLocation'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<PeeringServiceSku>(PeeringServiceSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

