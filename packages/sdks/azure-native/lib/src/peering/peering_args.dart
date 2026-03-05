// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'peering_properties_direct.dart';
import 'peering_properties_exchange.dart';
import 'peering_sku.dart';

/// {@template pulumi_peering_peering_args_doc}
/// The set of arguments for Peering.
/// {@endtemplate}
/// {@macro pulumi_peering_peering_args_doc}
class PeeringArgs {
  /// The properties that define a direct peering.
  final pulumi.Input<PeeringPropertiesDirect>? direct;
  /// The properties that define an exchange peering.
  final pulumi.Input<PeeringPropertiesExchange>? exchange;
  /// The kind of the peering.
  final pulumi.Input<String> kind;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The location of the peering.
  final pulumi.Input<String>? peeringLocation;
  /// The name of the peering.
  final pulumi.Input<String>? peeringName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU that defines the tier and kind of the peering.
  final pulumi.Input<PeeringSku> sku;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PeeringArgs].
  /// [direct] The properties that define a direct peering.
  /// [exchange] The properties that define an exchange peering.
  /// [kind] The kind of the peering.
  /// [location] The location of the resource.
  /// [peeringLocation] The location of the peering.
  /// [peeringName] The name of the peering.
  /// [resourceGroupName] The name of the resource group.
  /// [sku] The SKU that defines the tier and kind of the peering.
  /// [tags] The resource tags.
  PeeringArgs({
    this.direct,
    this.exchange,
    required this.kind,
    this.location,
    this.peeringLocation,
    this.peeringName,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direct': ?pulumi.Input.mapOptionalInputValue<PeeringPropertiesDirect, Map<String, dynamic>>(direct, (value) => value.toMap()),
      'exchange': ?pulumi.Input.mapOptionalInputValue<PeeringPropertiesExchange, Map<String, dynamic>>(exchange, (value) => value.toMap()),
      'kind': kind,
      'location': ?location,
      'peeringLocation': ?peeringLocation,
      'peeringName': ?peeringName,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<PeeringSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory PeeringArgs.fromMap(Map<String, dynamic> map) {
    return PeeringArgs(
      direct: (() { final guardedValue = map['direct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PeeringPropertiesDirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exchange: (() { final guardedValue = map['exchange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PeeringPropertiesExchange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peeringLocation: (() { final guardedValue = map['peeringLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peeringName: (() { final guardedValue = map['peeringName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(PeeringSku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

