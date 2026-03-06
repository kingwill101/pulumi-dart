// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_peering_response.dart';
import 'route_filter_rule_response.dart';

/// Result data returned by getRouteFilter.
class GetRouteFilterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// A collection of references to express route circuit ipv6 peerings.
  final List<ExpressRouteCircuitPeeringResponse> ipv6Peerings;
  /// Resource location.
  final String location;
  /// Resource name.
  final String name;
  /// A collection of references to express route circuit peerings.
  final List<ExpressRouteCircuitPeeringResponse> peerings;
  /// The provisioning state of the route filter resource.
  final String provisioningState;
  /// Collection of RouteFilterRules contained within a route filter.
  final List<RouteFilterRuleResponse>? rules;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetRouteFilterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [ipv6Peerings] A collection of references to express route circuit ipv6 peerings.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [peerings] A collection of references to express route circuit peerings.
  /// [provisioningState] The provisioning state of the route filter resource.
  /// [rules] Collection of RouteFilterRules contained within a route filter.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const GetRouteFilterResult({
    required this.azureApiVersion,
    required this.etag,
    this.id,
    required this.ipv6Peerings,
    required this.location,
    required this.name,
    required this.peerings,
    required this.provisioningState,
    this.rules,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': ?id,
      'ipv6Peerings': pulumi.Input.encodeList<ExpressRouteCircuitPeeringResponse, Map<String, dynamic>>(ipv6Peerings, (value) => value.toMap()),
      'location': location,
      'name': name,
      'peerings': pulumi.Input.encodeList<ExpressRouteCircuitPeeringResponse, Map<String, dynamic>>(peerings, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<RouteFilterRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetRouteFilterResult.fromMap(Map<String, dynamic> map) {
    return GetRouteFilterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6Peerings: pulumi.Input.decodeList<ExpressRouteCircuitPeeringResponse>(map['ipv6Peerings']!, (value) => ExpressRouteCircuitPeeringResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      peerings: pulumi.Input.decodeList<ExpressRouteCircuitPeeringResponse>(map['peerings']!, (value) => ExpressRouteCircuitPeeringResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouteFilterRuleResponse>(guardedValue, (value) => RouteFilterRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

