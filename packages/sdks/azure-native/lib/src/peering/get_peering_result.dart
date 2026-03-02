// ignore_for_file: unused_element, unnecessary_cast

import 'peering_properties_direct_response.dart';
import 'peering_properties_exchange_response.dart';
import 'peering_sku_response.dart';

/// Result data returned by getPeering.
class GetPeeringResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The properties that define a direct peering.
  final PeeringPropertiesDirectResponse? direct;
  /// The properties that define an exchange peering.
  final PeeringPropertiesExchangeResponse? exchange;
  /// The ID of the resource.
  final String id;
  /// The kind of the peering.
  final String kind;
  /// The location of the resource.
  final String location;
  /// The name of the resource.
  final String name;
  /// The location of the peering.
  final String? peeringLocation;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// The SKU that defines the tier and kind of the peering.
  final PeeringSkuResponse sku;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetPeeringResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [direct] The properties that define a direct peering.
  /// [exchange] The properties that define an exchange peering.
  /// [id] The ID of the resource.
  /// [kind] The kind of the peering.
  /// [location] The location of the resource.
  /// [name] The name of the resource.
  /// [peeringLocation] The location of the peering.
  /// [provisioningState] The provisioning state of the resource.
  /// [sku] The SKU that defines the tier and kind of the peering.
  /// [tags] The resource tags.
  /// [type] The type of the resource.
  GetPeeringResult({
    required this.azureApiVersion,
    this.direct,
    this.exchange,
    required this.id,
    required this.kind,
    required this.location,
    required this.name,
    this.peeringLocation,
    required this.provisioningState,
    required this.sku,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'direct': ?direct == null ? null : direct!.toMap(),
      'exchange': ?exchange == null ? null : exchange!.toMap(),
      'id': id,
      'kind': kind,
      'location': location,
      'name': name,
      'peeringLocation': ?peeringLocation,
      'provisioningState': provisioningState,
      'sku': sku.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetPeeringResult(
      azureApiVersion: map['azureApiVersion'] as String,
      direct: map['direct'] == null ? null : PeeringPropertiesDirectResponse.fromMap((map['direct']! as Map).cast<String, dynamic>()),
      exchange: map['exchange'] == null ? null : PeeringPropertiesExchangeResponse.fromMap((map['exchange']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      kind: map['kind'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      peeringLocation: map['peeringLocation'] == null ? null : map['peeringLocation']! as String,
      provisioningState: map['provisioningState'] as String,
      sku: PeeringSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

